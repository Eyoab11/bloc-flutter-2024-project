import { Test, TestingModule } from '@nestjs/testing';
import { Crud2Service } from './crud2.service';

describe('Crud2Service', () => {
  let service: Crud2Service;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [Crud2Service],
    }).compile();

    service = module.get<Crud2Service>(Crud2Service);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
