export interface Monitor {
  id: string
  avatar: string
  name: string
  email: string
  schedule: {
    [day: string]: {
      start: string
      end: string
    }[]
  }
}
