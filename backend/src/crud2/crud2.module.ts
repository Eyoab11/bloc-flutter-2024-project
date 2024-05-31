import { Module } from '@nestjs/common';
import { Crud2Service } from './crud2.service';
import { Crud2Controller } from './crud2.controller';

@Module({
  providers: [Crud2Service],
  controllers: [Crud2Controller]
})
export class Crud2Module {}
