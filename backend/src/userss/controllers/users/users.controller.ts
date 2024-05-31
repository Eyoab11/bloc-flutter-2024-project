import { Controller, Get, Param, Post, Body } from '@nestjs/common';
import { UsersService } from '../../services/users/users.service';
import { CreateuserDto } from '../../dto/createuser.dto';

@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}

  @Get()
  getAllUsers() {
    return this.usersService.findAll();
  }

  @Get(':email')
  async getUserByEmail(@Param('email') email: string) {
    const user = await this.usersService.findOneByEmail(email);
    return user;
  }

  @Post('create')
  createUser(@Body() createUserDto: CreateuserDto) {
    const { email, password } = createUserDto;
    return this.usersService.createUser(createUserDto);
  }
}
