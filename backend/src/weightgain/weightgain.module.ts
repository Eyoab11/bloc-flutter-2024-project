import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { WeightGainController } from './weightgain.controller';
import { CrudUserGain } from './typeorm/crudgainuser';
import { WeightGainService } from './weightgain.service';

@Module({
  imports: [TypeOrmModule.forFeature([CrudUserGain])],
  controllers: [WeightGainController],
  providers: [WeightGainService],
})
export class WeightGainModule {}
