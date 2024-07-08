'use server'

import { prisma } from '@/prismaClient/db'
import { revalidatePath } from 'next/cache'

export async function createPost(formData: FormData) {
  await prisma.post.create({
    data: {
      title: formData.get('title') as string,
      slug: (formData.get('title') as string)
        .replace(/\s+/g, '-')
        .toLowerCase(),
      content: formData.get('content') as string
    }
  })

  revalidatePath('/posts')
  // TODO reset form input after submit
  // TODO validate 2 level - realtime and when submit ?
}

export async function deletePost(id: string) {
  await prisma.post.delete({
    where: { id }
  })
}

export async function updatePost(id: string, formData: FormData) {
  await prisma.post.update({
    where: { id },
    data: {
      title: formData.get('title') as string,
      slug: (formData.get('title') as string)
        .replace(/\s+/g, '-')
        .toLowerCase(),
      content: formData.get('content') as string
    }
  })
}
