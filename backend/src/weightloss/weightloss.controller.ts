import { Controller, Get, Post, Body, Param, Delete, Put } from '@nestjs/common';
import { WeightLossService } from './weightloss.service';
import { CrudUserLoss } from './typeorm/crudloss'; 

@Controller('weightloss')
export class WeightLossController {
    constructor(private readonly weightLossService: WeightLossService) {}

    @Get()
    findAll(): Promise<CrudUserLoss[]> {
        return this.weightLossService.findAll();
    }

    @Get(':id')
    findOne(@Param('id') id: number): Promise<CrudUserLoss> {
        return this.weightLossService.findOne(id);
    }

    @Post()
    create(@Body() user: CrudUserLoss): Promise<CrudUserLoss> {
        return this.weightLossService.create(user);
    }

    @Put(':id')
    update(@Param('id') id: number, @Body() user: CrudUserLoss): Promise<CrudUserLoss> {
        return this.weightLossService.update(id, user);
    }

    @Delete(':id')
    remove(@Param('id') id: number): Promise<void> {
        return this.weightLossService.remove(id);
    }
}
