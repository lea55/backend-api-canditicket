import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PrismaModule } from './prisma/prisma.module';

import { HttpModule } from '@nestjs/axios';
import { EventsModule } from './events/events.module';

@Module({
  imports: [PrismaModule,
    HttpModule,
    EventsModule
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
