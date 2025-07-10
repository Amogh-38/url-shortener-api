const express = require("express");
const router = express.Router();
const { shortenUrl, redirectToOriginal, getClickStats } = require("../controllers/urlController");

router.post("/shorten", shortenUrl);
router.get("/analytics/:code", getClickStats);
router.get("/:code", redirectToOriginal);

module.exports = router;
