import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CrudUserGain } from './typeorm/crudgainuser';  

@Injectable()
export class WeightGainService {
    constructor(
        @InjectRepository(CrudUserGain)
        private userRepository: Repository<CrudUserGain>,
    ) {}

    findAll(): Promise<CrudUserGain[]> {
        return this.userRepository.find();
    }

    findOne(id: number): Promise<CrudUserGain> {
        return this.userRepository.findOneBy({ id });
    }

    create(user: CrudUserGain): Promise<CrudUserGain> {
        return this.userRepository.save(user);
    }

    async update(id: number, user: CrudUserGain): Promise<CrudUserGain> {
        await this.userRepository.update(id, user);
        return this.userRepository.findOneBy({ id });
    }

    async remove(id: number): Promise<void> {
        await this.userRepository.delete(id);
    }
}
