import { Test, TestingModule } from '@nestjs/testing';
import { WeightlossService } from './weightloss.service';

describe('WeightlossService', () => {
  let service: WeightlossService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [WeightlossService],
    }).compile();

    service = module.get<WeightlossService>(WeightlossService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
