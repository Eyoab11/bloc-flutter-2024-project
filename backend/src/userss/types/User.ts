import { Exclude } from "class-transformer";

export interface User {
    email: string;
    password: string;
}

export class SerializedUser{
    email: string;

    @Exclude()
    password: string;

    constructor(partial: Partial<SerializedUser>) {
        Object.assign(this, partial);
    }
}