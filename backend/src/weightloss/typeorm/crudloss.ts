import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class CrudUserLoss {
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
        name: 'weight_loss_goal', 
        nullable: false,
        default: 0,
    })
    weightGoal: number;

    @Column({
        name: 'Burnt_calorie_Goal', 
        nullable: false,
        default: 0,
    })
    calorieGoal: number;

    @Column({
        name: 'Burnt_calorie', 
        nullable: false,
        default: 0,
    })
    calorie: number;

    @Column({
        name: 'Weight_Lost', 
        nullable: false,
        default: 0,
    })
    weight: number;
}
