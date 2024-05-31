export class Crud{

}import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class User {
    @PrimaryGeneratedColumn({
        
    })
    id: number;

    @Column({
        name: 'task',
        nullable: false,
        default: '',
    })
    task: string;

    @Column({
        type: 'date',
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
        default: 0


    })
    sets: number;

}