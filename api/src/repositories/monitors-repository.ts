import { Monitor } from '@entities'
import { v4 as uuid } from 'uuid'

const monitors: Monitor[] = [
  {
    id: uuid(),
    name: 'Bruno Borges de Oliveira',
    email: 'cc22123@g.unicamp.br',
    avatar: '/public/images/monitors/bruno-borges.jpeg',
    schedule: {
      'Terça-feira': [
        {
          start: '10:45',
          end: '11:30'
        }
      ],
      'Quarta-feira': [
        {
          start: '08:15',
          end: '10:45'
        },
        {
          start: '13:30',
          end: '18:15'
        }
      ],
      'Quinta-feira': [
        {
          start: '10:45',
          end: '11:30'
        },
        {
          start: '13:30',
          end: '15:00'
        }
      ],
      Sábado: [
        {
          start: '10:00',
          end: '12:15'
        }
      ]
    }
  },
  {
    id: uuid(),
    name: 'Bruno Silva Concli',
    email: 'cc22303@g.unicamp.br',
    avatar: '/public/images/monitors/bruno-concli.jpeg',
    schedule: {
      'Segunda-feira': [
        {
          start: '16:00',
          end: '19:00'
        }
      ],
      'Terça-feira': [
        {
          start: '14:15',
          end: '15:00'
        },
        {
          start: '16:45',
          end: '18:15'
        }
      ],
      'Quinta-feira': [
        {
          start: '18:15',
          end: '19:45'
        }
      ],
      'Sexta-feira': [
        {
          start: '16:45',
          end: '18:15'
        }
      ],
      Sábado: [
        {
          start: '07:30',
          end: '11:30'
        }
      ]
    }
  },
  {
    id: uuid(),
    name: 'Isabela Bergamo',
    email: 'cc20676@g.unicamp.br',
    avatar: '/public/images/monitors/isabela.jpeg',
    schedule: {
      'Segunda-feira': [
        {
          start: '17:30',
          end: '19:00'
        },
        {
          start: '20:30',
          end: '21:15'
        }
      ],
      'Terça-feira': [
        {
          start: '17:30',
          end: '23:00'
        }
      ],
      'Quarta-feira': [
        {
          start: '17:30',
          end: '19:00'
        }
      ],
      'Quinta-feira': [
        {
          start: '17:30',
          end: '19:00'
        }
      ],
      'Sexta-feira': [
        {
          start: '17:30',
          end: '19:00'
        }
      ]
    }
  },
  {
    id: uuid(),
    name: 'João Pedro Ferreira Barbosa',
    email: 'cc21687@g.unicamp.br',
    avatar: '/public/images/monitors/joao-pedro.jpeg',
    schedule: {
      'Segunda-feira': [
        {
          start: '08:15',
          end: '09:45'
        }
      ],
      'Quarta-feira': [
        {
          start: '10:00',
          end: '12:15'
        },
        {
          start: '13:30',
          end: '15:00'
        }
      ],
      'Quinta-feira': [
        {
          start: '10:00',
          end: '12:15'
        }
      ],
      'Sexta-feira': [
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
  },
  {
    id: uuid(),
    name: 'Miguel Lopes Braido',
    email: 'cc22327@g.unicamp.br',
    avatar: '/public/images/monitors/miguel.jpeg',
    schedule: {
      'Segunda-feira': [
        {
          start: '13:30',
          end: '14:15'
        },
        {
          start: '16:00',
          end: '18:15'
        }
      ],
      'Terça-feira': [
        {
          start: '18:15',
          end: '19:00'
        }
      ],
      'Quarta-feira': [
        {
          start: '18:15',
          end: '19:00'
        }
      ],
      'Quinta-feira': [
        {
          start: '13:30',
          end: '14:15'
        }
      ],
      'Sexta-feira': [
        {
          start: '13:30',
          end: '14:15'
        },
        {
          start: '16:45',
          end: '18:15'
        }
      ],
      Sábado: [
        {
          start: '07:30',
          end: '12:15'
        }
      ]
    }
  }
]

export async function findAll(): Promise<Monitor[] | undefined> {
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve(monitors)
    }, 50 * Math.floor(Math.random() * 4)) // simulates a delay between 0 and 200ms
  })
}

export async function findById(id: string): Promise<Monitor | undefined> {
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve(monitors.find((monitor) => monitor.id === id))
    }, 50 * Math.floor(Math.random() * 4)) // simulates a delay between 0 and 200ms
  })
}
