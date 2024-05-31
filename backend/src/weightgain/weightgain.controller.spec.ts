import { Test, TestingModule } from '@nestjs/testing';
import { WeightGainController } from './weightgain.controller';

describe('WeightGainController', () => {
  let controller: WeightGainController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [WeightGainController],
    }).compile();

    controller = module.get<WeightGainController>(WeightGainController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
