const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
  const currentDate = new Date();
  res.json({
    date: currentDate.toString()
  });
});

app.listen(port, () => {
  console.log(`Aplikacja Express działa na porcie ${port}.`);
});


