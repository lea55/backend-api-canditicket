/*
  Warnings:

  - You are about to drop the `EventTicket` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "EventTicket" DROP CONSTRAINT "EventTicket_eventId_fkey";

-- DropForeignKey
ALTER TABLE "EventTicket" DROP CONSTRAINT "EventTicket_userId_fkey";

-- DropTable
DROP TABLE "EventTicket";

-- CreateTable
CREATE TABLE "ConfigTicket" (
    "id" SERIAL NOT NULL,
    "eventId" INTEGER NOT NULL,
    "userId" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "saleChannel" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "quantity" INTEGER NOT NULL,
    "enable" BOOLEAN NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "EndDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "visibilityStart" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "visibilityEnd" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "paymentMethod" "PaymentMethod" NOT NULL DEFAULT 'PMMERCPAGO',
    "paymentType" "PaymentType" NOT NULL DEFAULT 'TPAID',
    "chargeType" "ChargeType" NOT NULL DEFAULT 'CTTRANFER',
    "paymentReference" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ConfigTicket_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ConfigTicket_eventId_key" ON "ConfigTicket"("eventId");

-- AddForeignKey
ALTER TABLE "ConfigTicket" ADD CONSTRAINT "ConfigTicket_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ConfigTicket" ADD CONSTRAINT "ConfigTicket_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
