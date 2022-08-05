const GoogleAuth = require("google-auth-library");
const { google } = require("googleapis");
const fs = require("fs");
const readline = require("readline");

const SCOPES = ["https://www.googleapis.com/auth/drive.metadata.readonly"];

const getCredentials = () => {
  // fs.readdir("./", (err, files) => {
  //   files.forEach((file) => {
  //     console.log(file);
  //   });
  // });

  // fs.readFile("./src/credentials.json", (err, content) => {
  //   if (err) return console.log("Error loading client secret file:", err);
  //   // Authorize a client with credentials, then call the Google Drive API.
  //   authorize(JSON.parse(content), listFiles);
  // });

  try {
    const file = fs.readFileSync("./credentials.json");
    const object = JSON.parse(file);
    authorize(object, listFiles);
    // console.log(object);
  } catch (error) {
    console.log(error);
  }
};

const listFiles = async (auth) => {
  const drive = google.drive({ version: "v3", auth });
  try {
    const fileList = await drive.files.list({ q: 'name = "cnns"' });
    console.log("file", fileList.data);
    return fileList;
  } catch (err) {
    console.log(err);
  }
};

const authorize = (credentials, callback) => {
  const { client_secret, client_id, redirect_uris } = credentials.web;
  const oAuth2Client = new google.auth.OAuth2(client_id, client_secret, redirect_uris[1]);

  // console.log(client_id, client_secret, redirect_uris[0]);
  // const drive = oAuth2Client.setCredentials({ refresh_token: process.env.REFRESH_TOKEN });

  fs.readFile("./token.json", (err, token) => {
    if (err) return getAccessToken(oAuth2Client, callback);
    oAuth2Client.setCredentials(JSON.parse(token));
    callback(oAuth2Client);
  });
};

function getAccessToken(oAuth2Client, callback) {
  const authUrl = oAuth2Client.generateAuthUrl({
    access_type: "offline",
    scope: SCOPES,
  });
  console.log("Authorize this app by visiting this url:", authUrl);
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });
  rl.question("Enter the code from that page here: ", (code) => {
    rl.close();
    oAuth2Client.getToken(code, (err, token) => {
      if (err) return console.error("Error retrieving access token", err);
      oAuth2Client.setCredentials(token);
      // Store the token to disk for later program executions
      fs.writeFile(TOKEN_PATH, JSON.stringify(token), (err) => {
        if (err) return console.error(err);
        console.log("Token stored to", TOKEN_PATH);
      });
      callback(oAuth2Client);
    });
  });
}

module.exports = { getCredentials };
