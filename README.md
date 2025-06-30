ALTER TABLE [config].[pbi_report_subscription_audit]
ADD [pbi_report_event_key] INT NULL;


ALTER TABLE [config].[pbi_report_subscription_audit]
ADD CONSTRAINT FK_pbi_report_subscription_audit_event
FOREIGN KEY ([pbi_report_event_key])
REFERENCES [config].[pbi_report_event]([pbi_report_event_key]);



-- Drop the foreign key constraint first
ALTER TABLE [config].[pbi_report_subscription_audit]
DROP CONSTRAINT FK_pbi_report_subscription_audit_event;
GO

-- Then drop the column
ALTER TABLE [config].[pbi_report_subscription_audit]
DROP COLUMN [pbi_report_event_key];
GO