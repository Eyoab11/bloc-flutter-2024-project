import { Test, TestingModule } from '@nestjs/testing';
import { WeightGainService } from './weightgain.service';

describe('WeightGainService', () => {
  let service: WeightGainService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [WeightGainService],
    }).compile();

    service = module.get<WeightGainService>(WeightGainService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
