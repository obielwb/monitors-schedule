import { Router } from 'express'
import { setUpMonitorRoutes } from './monitor-routes'

const router = Router()

setUpMonitorRoutes(router)

export { router as routes }
