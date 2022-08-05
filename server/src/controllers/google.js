const { getCredentials } = require("./google_utils");

const getFileList = async (req, res) => {
  const files = await getCredentials();
  if (files) console.log("files: ", files);
};

module.exports = { getFileList };
