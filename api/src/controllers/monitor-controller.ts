import { Monitor } from '@entities'
import { Request, Response } from 'express'
import { v4 as uuid } from 'uuid'

const monitors: Monitor[] = [
  {
    id: uuid(),
    name: 'João Pedro Ferreira Barbosa',
    email: 'cc21687@g.unicamp.br',
    avatar: '/images/monitors/joao-pedro.jpeg',
    schedule: {
      monday: [
        {
          start: '08:15',
          end: '09:45'
        }
      ],
      wednesday: [
        {
          start: '10:00',
          end: '12:15'
        },
        {
          start: '13:30',
          end: '15:00'
        }
      ],
      thursday: [
        {
          start: '10:00',
          end: '12:15'
        }
      ],
      friday: [
        {
          start: '11:30',
          end: '12:15'
        },
        {
          start: '15:00',
          end: '15:45'
        },
        {
          start: '17:30',
          end: '18:15'
        },
        {
          start: '19:00',
          end: '21:15'
        }
      ]
    }
  }
]

export function getMonitors(request: Request, response: Response) {
  return response.json(monitors)
}

export function getMonitor(request: Request, response: Response) {
  const { id } = request.params

  const monitor = monitors.find((monitor) => monitor.id === id)

  return response.json(monitor)
}
