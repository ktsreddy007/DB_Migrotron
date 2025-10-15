BEGIN TRANSACTION;
ALTER TABLE [Users] ADD [Email] nvarchar(max) NOT NULL DEFAULT N'';

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20251015162101_AddEmailToUser', N'9.0.10');

COMMIT;
GO

