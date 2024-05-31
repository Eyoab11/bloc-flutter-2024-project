import { Test, TestingModule } from '@nestjs/testing';
import { Crud2Controller } from './crud2.controller';

describe('Crud2Controller', () => {
  let controller: Crud2Controller;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [Crud2Controller],
    }).compile();

    controller = module.get<Crud2Controller>(Crud2Controller);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
