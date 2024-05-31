import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CrudService } from './crud.service';
import { CrudController } from './crud.controller';
import { CrudUser } from './Typeorm/CrudUser'; 

@Module({
    imports: [TypeOrmModule.forFeature([CrudUser])],
    providers: [CrudService],
    controllers: [CrudController]
})
export class CrudModule {}
