import { Request, Response } from 'express'
import { monitorsRepository } from '@repositories'

export async function getMonitors(request: Request, response: Response) {
  const monitors = await monitorsRepository.findAll()

  return response.json(monitors)
}

export async function getMonitor(request: Request, response: Response) {
  const { id } = request.params

  const monitor = await monitorsRepository.findById(id)

  return response.json(monitor)
}
