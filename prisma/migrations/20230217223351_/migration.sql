/*
  Warnings:

  - You are about to drop the column `eventstatusid` on the `Event` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[eventId]` on the table `EventStatus` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `eventId` to the `EventStatus` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Event" DROP CONSTRAINT "Event_eventstatusid_fkey";

-- AlterTable
ALTER TABLE "Event" DROP COLUMN "eventstatusid";

-- AlterTable
ALTER TABLE "EventStatus" ADD COLUMN     "eventId" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "EventStatus_eventId_key" ON "EventStatus"("eventId");

-- AddForeignKey
ALTER TABLE "EventStatus" ADD CONSTRAINT "EventStatus_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
