import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class CrudUser {
    @PrimaryGeneratedColumn()
    id: number;

    
    @Column({
        type: 'timestamp',
        nullable: false,
        default: () => 'CURRENT_TIMESTAMP',
    })
    startingdate: Date;


    @Column({
        type: 'timestamp',
        nullable: false,
        default: () => 'CURRENT_TIMESTAMP',
    })
    Duedate: Date;

    @Column({
        name: 'weight gain goal',
        nullable: false,
        default: 0,
    })
    WeightGoal: number;

    @Column({
        name: 'Burnt calorie Goal',
        nullable: false,
        default: 0,
    })
    CalorieGoal: number;


    @Column({
        name: 'Burnt calorie ',
        nullable: false,
        default: 0,
    })
    Calorie: number;


    @Column({
        name: 'Weight Gained',
        nullable: false,
        default: 0,
    })
    weight: number;
}
