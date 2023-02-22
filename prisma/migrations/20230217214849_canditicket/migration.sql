/*
  Warnings:

  - You are about to drop the column `subcategoryId` on the `Category` table. All the data in the column will be lost.
  - You are about to drop the column `roleId` on the `User` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Category" DROP COLUMN "subcategoryId";

-- AlterTable
ALTER TABLE "User" DROP COLUMN "roleId";
