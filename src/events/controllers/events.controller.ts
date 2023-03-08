import {
    Controller,
    Post,
    Body,
  } from '@nestjs/common';


import { ApiCreatedResponse,  ApiTags } from '@nestjs/swagger';

import { CreateEventsDto } from '../dto/events.dtos';
import { EventsService } from '../service/events.service';
import { EventEntity } from '../entities/events.entity';
  
  @Controller('events')
  @ApiTags('events')
  export class EventsController {
    constructor(private readonly eventsService: EventsService) {}
  
    @Post()
    @ApiCreatedResponse({ type: EventEntity })
    create(@Body() createEventsDto: CreateEventsDto) {
      return this.eventsService.create(createEventsDto);
    }
  
  }