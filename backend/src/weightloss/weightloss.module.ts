import { Module } from '@nestjs/common';
import { WeightLossService } from './weightloss.service';
import { WeightLossController} from './weightloss.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CrudUserLoss } from './typeorm/crudloss';

@Module({
  imports: [TypeOrmModule.forFeature([CrudUserLoss])],
  providers: [WeightLossService],
  controllers: [WeightLossController]
})
export class WeightLossModule {}
