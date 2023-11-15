/*
  Warnings:

  - You are about to drop the column `parent_id` on the `categories` table. All the data in the column will be lost.
  - Added the required column `code` to the `categories` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "categories" DROP COLUMN "parent_id",
ADD COLUMN     "code" TEXT NOT NULL;
