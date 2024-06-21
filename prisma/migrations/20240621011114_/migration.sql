/*
  Warnings:

  - You are about to drop the column `eventID` on the `Spot` table. All the data in the column will be lost.
  - Added the required column `eventId` to the `Spot` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `Spot` DROP FOREIGN KEY `Spot_eventID_fkey`;

-- AlterTable
ALTER TABLE `Spot` DROP COLUMN `eventID`,
    ADD COLUMN `eventId` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `Spot` ADD CONSTRAINT `Spot_eventId_fkey` FOREIGN KEY (`eventId`) REFERENCES `Event`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
