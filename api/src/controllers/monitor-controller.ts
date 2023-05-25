import { Monitor } from '@entities'
import { Request, Response } from 'express'

const monitors: Monitor[] = []

export function getMonitors(request: Request, response: Response) {
  return response.json(monitors)
}

export function getMonitor(request: Request, response: Response) {
  const { id } = request.params

  const monitor = monitors.find((monitor) => monitor.id === id)

  return response.json(monitor)
}
