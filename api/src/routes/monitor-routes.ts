import { Router } from 'express'
import { monitorController } from '@controllers'

export const setUpMonitorRoutes = (router: Router) => {
  router.get('/monitors', monitorController.getMonitors)
  router.get('/monitors/:id', monitorController.getMonitor)
}
