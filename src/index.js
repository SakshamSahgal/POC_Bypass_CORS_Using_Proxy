require("dotenv").config()
const port = process.env.PORT || 8080
const { app } = require("./app");

app.listen(port, () => {
    console.log("CORS Accepted URL :", process.env.CORS_ORIGIN)
    console.log(`Server running on port ${port}`)
})

app.get("/api/health", (req, res) => {
    res.send("HEALTH OK")
})

app.post("/api/abc", (req, res) => {
    res.send("ABC OK")
})