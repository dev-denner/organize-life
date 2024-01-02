/*
  Warnings:

  - You are about to drop the column `create_in` on the `accounts` table. All the data in the column will be lost.
  - You are about to drop the column `update_in` on the `accounts` table. All the data in the column will be lost.
  - You are about to drop the column `create_in` on the `categories` table. All the data in the column will be lost.
  - You are about to drop the column `update_in` on the `categories` table. All the data in the column will be lost.
  - You are about to drop the column `create_in` on the `movements` table. All the data in the column will be lost.
  - You are about to drop the column `update_in` on the `movements` table. All the data in the column will be lost.
  - You are about to drop the column `create_in` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `update_in` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `create_in` on the `purchase_items` table. All the data in the column will be lost.
  - You are about to drop the column `update_in` on the `purchase_items` table. All the data in the column will be lost.
  - You are about to drop the column `create_in` on the `purchases` table. All the data in the column will be lost.
  - You are about to drop the column `update_in` on the `purchases` table. All the data in the column will be lost.
  - You are about to drop the column `create_in` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `update_in` on the `suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `create_in` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `update_in` on the `users` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "accounts" DROP COLUMN "create_in",
DROP COLUMN "update_in",
ADD COLUMN     "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "update_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "categories" DROP COLUMN "create_in",
DROP COLUMN "update_in",
ADD COLUMN     "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "update_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "movements" DROP COLUMN "create_in",
DROP COLUMN "update_in",
ADD COLUMN     "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "update_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "products" DROP COLUMN "create_in",
DROP COLUMN "update_in",
ADD COLUMN     "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "update_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "purchase_items" DROP COLUMN "create_in",
DROP COLUMN "update_in",
ADD COLUMN     "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "update_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "purchases" DROP COLUMN "create_in",
DROP COLUMN "update_in",
ADD COLUMN     "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "update_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "suppliers" DROP COLUMN "create_in",
DROP COLUMN "update_in",
ADD COLUMN     "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "update_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "users" DROP COLUMN "create_in",
DROP COLUMN "update_in",
ADD COLUMN     "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "update_at" TIMESTAMP(3);
