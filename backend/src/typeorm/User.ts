import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class User {
    @PrimaryGeneratedColumn({
        
    })
    id: number;

    @Column({
        name: 'email',
        nullable: false,
        default: 'trainee',
        unique: true
    })
    email: string;

    @Column({
        name: 'name',
        nullable: false,
        default: '',
    })
    name: string;

    @Column({
        name: 'password',
        nullable: false,
        default: null,
    })
    password: string;


    @Column({
        nullable: false,
        default: ' ',
    })
  role: 'trainer' | 'trainee'; 

}