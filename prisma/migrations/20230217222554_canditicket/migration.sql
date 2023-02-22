/*
  Warnings:

  - Added the required column `eventstatusid` to the `Event` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Event" ADD COLUMN     "eventstatusid" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "EventStatus" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "EventStatus_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Event" ADD CONSTRAINT "Event_eventstatusid_fkey" FOREIGN KEY ("eventstatusid") REFERENCES "EventStatus"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
