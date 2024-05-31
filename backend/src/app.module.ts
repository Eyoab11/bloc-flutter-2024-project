import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthModule } from './auth/auth.module';
import { UsersModule } from './userss/userss.module';
import entities, { User } from './typeorm';
import { ProtectedModule } from './auth/protected.module';
import { CrudModule } from './crud/crud.module';
import { CrudUser } from './crud/Typeorm/CrudUser';
import { WeightGainModule } from './weightgain/weightgain.module';
import { WeightLossModule } from './weightloss/weightloss.module';
import { CrudUserGain } from './weightgain/typeorm/crudgainuser';
import { CrudUserLoss } from './weightloss/typeorm/crudloss';
import { PostModule } from './post/post.module';
import { Post } from './post/post.entity';
@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      port: 3306,
      username: 'root',
      password: '1111',
      database: 'newauth',
      entities: [User,CrudUser,CrudUserGain, CrudUserLoss,Post], 
      synchronize: true,
    }),
    AuthModule, 
    UsersModule, 
    ProtectedModule, 
CrudModule,WeightGainModule, WeightLossModule, PostModule
  ],
})
export class AppModule {}
