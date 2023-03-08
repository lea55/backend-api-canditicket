import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateEventsDto } from '../dto/events.dtos';
import { Event } from '@prisma/client';

@Injectable()
export class EventsService {
  constructor(private readonly prismaService: PrismaService) {}

async create(createEventDto: CreateEventsDto) : Promise<Event> {
const event = await this.prismaService.event.create({
  data: {
    ...createEventDto,
},
});
  return event;
  }


}