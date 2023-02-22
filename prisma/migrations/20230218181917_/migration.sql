/*
  Warnings:

  - You are about to drop the column `Enable` on the `Event` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[organizadorId]` on the table `Event` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `availableTickets` to the `Event` table without a default value. This is not possible if the table is not empty.
  - Added the required column `coverImage` to the `Event` table without a default value. This is not possible if the table is not empty.
  - Added the required column `enable` to the `Event` table without a default value. This is not possible if the table is not empty.
  - Added the required column `minEntryPrice` to the `Event` table without a default value. This is not possible if the table is not empty.
  - Added the required column `organizadorId` to the `Event` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tags` to the `Event` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Event` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Event" DROP COLUMN "Enable",
ADD COLUMN     "availableTickets" INTEGER NOT NULL,
ADD COLUMN     "coverImage" TEXT NOT NULL,
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "enable" BOOLEAN NOT NULL,
ADD COLUMN     "minEntryPrice" INTEGER NOT NULL,
ADD COLUMN     "organizadorId" INTEGER NOT NULL,
ADD COLUMN     "tags" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- CreateTable
CREATE TABLE "Organization" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "website" TEXT NOT NULL,
    "facebookLink" TEXT NOT NULL,
    "imageUrl" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "enable" BOOLEAN NOT NULL,
    "profileImage" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Organization_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Organization_userId_key" ON "Organization"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "Event_organizadorId_key" ON "Event"("organizadorId");

-- AddForeignKey
ALTER TABLE "Event" ADD CONSTRAINT "Event_organizadorId_fkey" FOREIGN KEY ("organizadorId") REFERENCES "Organization"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Organization" ADD CONSTRAINT "Organization_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
