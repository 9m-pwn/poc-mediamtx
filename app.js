const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// GET api route
app.get('/api', (req, res) => {
    res.send('Hello World!');
});

// Start server
app.listen(port, () => {
    console.log(`Example app listening on ${port}!`);
});