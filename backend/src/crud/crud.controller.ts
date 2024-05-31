import { Controller, Get, Post, Body, Param, Delete, Put } from '@nestjs/common';
import { CrudService } from './crud.service';
import { CrudUser } from './Typeorm/CrudUser';

@Controller('crud')
export class CrudController {
    constructor(private readonly crudService: CrudService) {}

    @Get()
    findAll(): Promise<CrudUser[]> {
        return this.crudService.findAll();
    }

    @Get(':id')
    findOne(@Param('id') id: number): Promise<CrudUser> {
        return this.crudService.findOne(id);
    }

    @Post()
    create(@Body() user: CrudUser): Promise<CrudUser> {
        return this.crudService.create(user);
    }

    @Put(':id')
    update(@Param('id') id: number, @Body() user: CrudUser): Promise<CrudUser> {
        return this.crudService.update(id, user);
    }

    @Delete(':id')
    remove(@Param('id') id: number): Promise<void> {
        return this.crudService.remove(id);
    }
}
