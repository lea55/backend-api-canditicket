/*
  Warnings:

  - Added the required column `subcategoryId` to the `Category` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Category" ADD COLUMN     "subcategoryId" INTEGER NOT NULL;
