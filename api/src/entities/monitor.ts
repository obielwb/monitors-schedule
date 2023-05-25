export interface Schedule {
  [day: string]: {
    start: string
    end: string
  }[]
}

export interface Monitor {
  id: string
  avatar: string
  name: string
  email: string
  schedule: Schedule
}
