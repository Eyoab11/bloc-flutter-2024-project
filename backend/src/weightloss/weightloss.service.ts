import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CrudUserLoss } from './typeorm/crudloss'; 

@Injectable()
export class WeightLossService {
    constructor(
        @InjectRepository(CrudUserLoss)
        private userRepository: Repository<CrudUserLoss>,
    ) {}

    findAll(): Promise<CrudUserLoss[]> {
        return this.userRepository.find();
    }

    findOne(id: number): Promise<CrudUserLoss> {
        return this.userRepository.findOneBy({ id });
    }

    create(user: CrudUserLoss): Promise<CrudUserLoss> {
        return this.userRepository.save(user);
    }

    async update(id: number, user: CrudUserLoss): Promise<CrudUserLoss> {
        await this.userRepository.update(id, user);
        return this.userRepository.findOneBy({ id });
    }

    async remove(id: number): Promise<void> {
        await this.userRepository.delete(id);
    }
}
