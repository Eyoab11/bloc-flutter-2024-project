import { IsEmail, IsNotEmpty, MinLength } from "class-validator";

export class CreateuserDto {
    @IsNotEmpty()
    @IsEmail()
    email: string;

    @IsNotEmpty()
    @MinLength(6)
    password: string;

    name: string;

    @IsNotEmpty()
    role: 'trainer' | 'trainee';

}