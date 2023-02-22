/*
  Warnings:

  - You are about to drop the `EventStatus` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[statusId]` on the table `Event` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `statusId` to the `Event` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "EventStatus" DROP CONSTRAINT "EventStatus_eventId_fkey";

-- AlterTable
ALTER TABLE "Event" ADD COLUMN     "statusId" INTEGER NOT NULL;

-- DropTable
DROP TABLE "EventStatus";

-- CreateTable
CREATE TABLE "Status" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "Status_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Event_statusId_key" ON "Event"("statusId");

-- AddForeignKey
ALTER TABLE "Event" ADD CONSTRAINT "Event_statusId_fkey" FOREIGN KEY ("statusId") REFERENCES "Status"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
