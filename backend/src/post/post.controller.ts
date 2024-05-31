
import { Controller, Post, Body, UseGuards } from '@nestjs/common';
import { Roles } from 'src/auth/guards/roles.decorator';
import { RolesGuard } from 'src/auth/guards/roles.guard';
import { CreatePostDto } from './post.dto';
import { PostService } from './post.service';
import { JwtAuthGuard } from 'src/auth/guards/jwt.guard';

@Controller('posts')
export class PostController {
  constructor(private readonly postService: PostService) {}

  @Post('create')
  @UseGuards(RolesGuard, JwtAuthGuard)
  @Roles('trainer')
  async createPost(@Body() createPostDto: CreatePostDto) {
    return this.postService.create(createPostDto);
  }
}
