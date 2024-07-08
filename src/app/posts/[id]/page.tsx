import { prisma } from '@/prismaClient/db'

type TPostPage = {
  params: {
    id: string
  }
}
export default async function PostPage({ params }: TPostPage) {
  const post = await prisma.post.findUnique({
    where: {
      id: params.id
    }
  })

  if (!post) return <h1>No Post found</h1>

  return (
    <main
      className='flex flex-col items-center gap-y-5 pt-24
  text-center'
    >
      <h1 className='text-3xl font-semibold'>{post.title}</h1>
      <p>{post.content}</p>
    </main>
  )
}
