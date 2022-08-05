const app = require("express");
const { setGoogleToken } = require("../controllers/auth");
const { getFileList } = require("../controllers/google");
const googleRouter = app.Router();

googleRouter.get("/token", setGoogleToken);
googleRouter.get("/filelist", getFileList);

module.exports = { googleRouter };
