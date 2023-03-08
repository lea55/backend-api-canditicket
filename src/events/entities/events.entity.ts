import { Event } from '@prisma/client';


export class EventEntity implements Event {
    id: number;
    name: string;
    description: string;
    startDate: Date;
    endDate: Date;
    locationId: number;
    subcategoryId: number;
    returnPolicy: string;
    active: boolean;
    enable: boolean;
    coverImage: string;
    tags: string;
    availableTickets: number;
    minEntryPrice: number;
    userId: number;
    statusId: number;
    organizadorId: number;
    
  
}