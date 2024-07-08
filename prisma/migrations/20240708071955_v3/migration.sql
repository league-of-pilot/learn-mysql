-- AlterTable
ALTER TABLE "User" ADD COLUMN "aliasNickId" TEXT;

-- CreateTable
CREATE TABLE "AliasNick" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nickName" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_AliasNickToUser" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL,
    CONSTRAINT "_AliasNickToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "AliasNick" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_AliasNickToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "User" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "_AliasNickToUser_AB_unique" ON "_AliasNickToUser"("A", "B");

-- CreateIndex
CREATE INDEX "_AliasNickToUser_B_index" ON "_AliasNickToUser"("B");
