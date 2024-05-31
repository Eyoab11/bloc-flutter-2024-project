import { Controller, Get, UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from './guards/jwt.guard'; 

@Controller('protected')
export class ProtectedController {
  @UseGuards(JwtAuthGuard)
  @Get('route')
  getProtectedRoute() {
    return { message: 'This is a protected route' };
  }
}
