import { Module } from '@nestjs/common';
import { PrismaModule } from 'src/prisma/prisma.module';
import { EventsController } from './controllers/events.controller';
import { EventsService } from './service/events.service';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  controllers: [EventsController],
  providers: [EventsService,PrismaService],

})
export class EventsModule {}