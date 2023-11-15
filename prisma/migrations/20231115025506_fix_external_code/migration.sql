-- AlterTable
ALTER TABLE "movements" ALTER COLUMN "external_code" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "purchase_items" ALTER COLUMN "external_code" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "purchases" ALTER COLUMN "external_code" SET DATA TYPE TEXT;
