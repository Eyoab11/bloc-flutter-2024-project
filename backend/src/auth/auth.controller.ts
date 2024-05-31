import { Controller, Post, Body } from '@nestjs/common';
import { AuthService } from './auth.service';
import { CreateuserDto } from '../userss/dto/createuser.dto';
import { LoginDto } from './dto/auth.dto';

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('register')
  async register(@Body() createUserDto: CreateuserDto) {
    const user = await this.authService.registerUser(createUserDto);
    return user;
  }

  @Post('login')
  async login(@Body() loginDto: LoginDto) {
    const user = await this.authService.validateUser(loginDto);
    if (!user) {
      return { message: 'Invalid credentials' };
    }
    return this.authService.login(user);
  }
}
