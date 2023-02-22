/*
  Warnings:

  - You are about to drop the `UsuarioRole` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `roleId` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "UsuarioRole" DROP CONSTRAINT "UsuarioRole_roleId_fkey";

-- DropForeignKey
ALTER TABLE "UsuarioRole" DROP CONSTRAINT "UsuarioRole_userId_fkey";

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "roleId" INTEGER NOT NULL;

-- DropTable
DROP TABLE "UsuarioRole";

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES "Role"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
