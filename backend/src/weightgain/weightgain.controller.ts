import { Controller, Get, Post, Body, Param, Delete, Put } from '@nestjs/common';
import { WeightGainService } from './weightgain.service'; 
import { CrudUserGain } from './typeorm/crudgainuser'; 

@Controller('weightgain')
export class WeightGainController {
    constructor(private readonly weightGainService:WeightGainService) {}

    @Get()
    findAll(): Promise<CrudUserGain[]> {
        return this.weightGainService.findAll();
    }

    @Get(':id')
    findOne(@Param('id') id: number): Promise<CrudUserGain> {
        return this.weightGainService.findOne(id);
    }

    @Post()
    create(@Body() user: CrudUserGain): Promise<CrudUserGain> {
        return this.weightGainService.create(user);
    }

    @Put(':id')
    update(@Param('id') id: number, @Body() user: CrudUserGain): Promise<CrudUserGain> {
        return this.weightGainService.update(id, user);
    }

    @Delete(':id')
    remove(@Param('id') id: number): Promise<void> {
        return this.weightGainService.remove(id);
    }
}
