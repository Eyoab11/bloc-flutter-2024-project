import { Module } from '@nestjs/common';
import { ProtectedController } from './protected.controller';
import { AuthModule } from '../auth/auth.module';

@Module({
  imports: [AuthModule],
  controllers: [ProtectedController],
})
export class ProtectedModule {}
