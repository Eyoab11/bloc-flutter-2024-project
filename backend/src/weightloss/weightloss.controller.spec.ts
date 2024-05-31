import { Test, TestingModule } from '@nestjs/testing';
import { WeightlossController } from './weightloss.controller';

describe('WeightlossController', () => {
  let controller: WeightlossController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [WeightlossController],
    }).compile();

    controller = module.get<WeightlossController>(WeightlossController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
