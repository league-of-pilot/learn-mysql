https://www.youtube.com/watch?v=QXxy8Uv1LnQ
Prisma in Next.js - My Fav Way to Work with Databases (CRUD, Dev/Prod Workflow, Relations, Indexes)
-> sponsor bởi chính Prisma docs

https://www.prisma.io/docs/getting-started/quickstart

```bash
npx create-next-app@latest
yarn add -D prettier prisma
npx prisma init --datasource-provider sqlite

```

Có thể phải cài plugin Prisma -> đôi lúc phải setting VsCode format file `.prisma` dùng extension

https://www.prisma.io/docs/orm/reference/prisma-cli-reference#db-push
https://www.prisma.io/docs/orm/prisma-migrate/workflows/prototyping-your-schema

Tạo 1st schema

```bash
npx prisma migrate dev --name init



```
