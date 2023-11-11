/*
  Warnings:

  - You are about to drop the column `usuario_id` on the `accounts` table. All the data in the column will be lost.
  - You are about to drop the `purchase` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `user_id` to the `accounts` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "accounts" DROP COLUMN "usuario_id",
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- DropTable
DROP TABLE "purchase";

-- CreateTable
CREATE TABLE "purchases" (
    "id" SERIAL NOT NULL,
    "external_code" INTEGER NOT NULL,
    "supplier_id" INTEGER,
    "number_installments" INTEGER NOT NULL,
    "full_amount_discount" INTEGER,
    "discount_value" INTEGER,
    "amount_charged" INTEGER NOT NULL,
    "date_time" TIMESTAMP(3) NOT NULL,
    "create_in" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_by" INTEGER,
    "update_in" TIMESTAMP(3),
    "last_changed_by" INTEGER,

    CONSTRAINT "purchases_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "purchases_supplier_id_idx" ON "purchases"("supplier_id");

-- CreateIndex
CREATE INDEX "accounts_user_id_idx" ON "accounts"("user_id");

-- CreateIndex
CREATE INDEX "movements_account_id_idx" ON "movements"("account_id");

-- CreateIndex
CREATE INDEX "movements_purchase_id_idx" ON "movements"("purchase_id");

-- CreateIndex
CREATE INDEX "purchase_items_purchase_id_idx" ON "purchase_items"("purchase_id");

-- CreateIndex
CREATE INDEX "purchase_items_product_id_idx" ON "purchase_items"("product_id");
