const config = require('../config')

const app = require('./app')

const PORT = process.env.PORT || config.ports.app
const HOST = process.env.HOST || 'localhost'

app()
  .then(server => server.listen(PORT, () =>
    console.log('Server started at http://' + HOST + ':' + PORT)
  ))
  .catch(console.error)
