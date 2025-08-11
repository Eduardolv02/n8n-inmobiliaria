// keep-alive.js
const https = require("https");

const URL = "https://<tu-dominio-render>.onrender.com/"; // Cambia por tu URL

setInterval(() => {
  https
    .get(URL, (res) => {
      console.log(`[KEEP-ALIVE] Ping a ${URL} - Status: ${res.statusCode}`);
    })
    .on("error", (err) => {
      console.error("[KEEP-ALIVE] Error:", err.message);
    });
}, 4 * 60 * 1000); // cada 4 minutos
