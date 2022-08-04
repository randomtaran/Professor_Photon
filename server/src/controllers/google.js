import GoogleAuth from "google-auth-library";
import google from "googleapis";

async function searchFile() {
  // Get credentials and build service
  // TODO (developer) - Use appropriate auth mechanism for your app
  const auth = new GoogleAuth({ scopes: "https://www.googleapis.com/auth/drive" });
  const service = google.drive({ version: "v3", auth });
  const files = [];
  try {
    const res = await service.files.list({
      q: "mimeType='image/jpeg'",
      fields: "nextPageToken, files(id, name)",
      spaces: "drive",
    });
    Array.prototype.push.apply(files, res.files);
    res.data.files.forEach(function (file) {
      console.log("Found file:", file.name, file.id);
    });
    return res.data.files;
  } catch (err) {
    // TODO(developer) - Handle error
    throw err;
  }
}
