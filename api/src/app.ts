import express from 'express'
import cors from 'cors'

import { routes } from '@routes'

const app = express()

app.use(express.json())

app.use(
  cors({
    origin: '*'
  })
)

app.use(express.static('public'))
app.use('/images', express.static('./public/images'))

app.use('/', routes)

export { app }
