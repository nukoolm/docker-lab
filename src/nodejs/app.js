const express = require('express')
const app = express()
const port = 3000

app.get('/backend', (req, res) => {
  res.send('This is backend nodejs')
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
