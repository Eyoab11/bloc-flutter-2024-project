import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CrudUser } from './Typeorm/CrudUser'; 

@Injectable()
export class CrudService {
    constructor(
        @InjectRepository(CrudUser)
        private userRepository: Repository<CrudUser>,
    ) {}

    findAll(): Promise<CrudUser[]> {
        return this.userRepository.find();
    }

    findOne(id: number): Promise<CrudUser> {
        return this.userRepository.findOneBy({ id });
    }

    create(user: CrudUser): Promise<CrudUser> {
        return this.userRepository.save(user);
    }

    async update(id: number, user: CrudUser): Promise<CrudUser> {
        await this.userRepository.update(id, user);
        return this.userRepository.findOneBy({ id });
    }

    async remove(id: number): Promise<void> {
        await this.userRepository.delete(id);
    }
}
