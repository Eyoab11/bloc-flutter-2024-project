import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class CrudUser {
    @PrimaryGeneratedColumn()
    id: number;

    @Column({
        name: 'task',
        nullable: false,
        default: '',
    })
    task: string;

    @Column({
        type: 'timestamp',
        nullable: false,
        default: () => 'CURRENT_TIMESTAMP',
    })
    date: Date;

    @Column({
        name: 'reps',
        nullable: false,
        default: 0,
    })
    reps: number;

    @Column({
        name: 'sets',
        nullable: false,
        default: 0,
    })
    sets: number;
}
