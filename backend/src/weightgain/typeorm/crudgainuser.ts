import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class CrudUserGain {
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
    duedate: Date;

    @Column({
        name: 'weight_gain_goal', // Change to snake_case without spaces
        nullable: false,
        default: 0,
    })
    weightGoal: number;

    @Column({
        name: 'Burnt_calorie_Goal', // Change to snake_case without spaces
        nullable: false,
        default: 0,
    })
    calorieGoal: number;

    @Column({
        name: 'Burnt_calorie', // Change to snake_case without spaces
        nullable: false,
        default: 0,
    })
    calorie: number;

    @Column({
        name: 'Weight_Gained', // Change to snake_case without spaces
        nullable: false,
        default: 0,
    })
    weight: number;
}
