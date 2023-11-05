-- CreateEnum
CREATE TYPE "PaymentStatus" AS ENUM ('PANDING', 'PAID');

-- CreateTable
CREATE TABLE "payments" (
    "id" TEXT NOT NULL,
    "amount" INTEGER NOT NULL,
    "studentId" TEXT NOT NULL,
    "status" "PaymentStatus" NOT NULL DEFAULT 'PANDING',
    "transactionId" TEXT NOT NULL,
    "paymentGatewayData" JSONB,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),

    CONSTRAINT "payments_pkey" PRIMARY KEY ("id")
);
