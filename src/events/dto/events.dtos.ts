import { ApiProperty, PartialType } from '@nestjs/swagger';
import {
    IsBoolean,
    IsDate,
  IsDateString,
  IsInt,
  IsNotEmpty,
  IsNumber,
  IsOptional,
  IsString,
  MinLength,
} from 'class-validator';

export class CreateEventsDto {
  @IsString()
  @IsNotEmpty()
  @MinLength(5)
  @ApiProperty()
  name: string;

  @IsString()
  @IsNotEmpty()
  @ApiProperty({ required: false })
  description: string;


  startDate:Date;

  @IsDateString()
  endDate: Date;

  @IsString()
  @IsOptional()
  @IsNotEmpty()
  returnPolicy: string;

  @IsBoolean()
  active: boolean;

  @IsBoolean()
  enable: boolean;

  @IsString()
  @IsOptional()
  @IsNotEmpty()
  coverImage: string;

  @IsString()
  @IsOptional()
  @IsNotEmpty()
  tags: string;

  @IsNumber()
  availableTickets: number;

  @IsNumber()
  minEntryPrice: number;

  

  @IsInt()
  locationId:number
  


  @IsInt()
  statusId:number


  @IsInt()
  subcategoryId:number 

 
  @IsInt()
  organizadorId: number



@IsInt()
userId:number
  
 

  
}

export class UpdateEventsDto extends PartialType(CreateEventsDto) {}