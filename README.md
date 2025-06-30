ALTER TABLE config.pbi_report_subscription
ADD pbi_report_event_key INT NULL;


ALTER TABLE config.pbi_report_subscription
ADD CONSTRAINT FK_pbi_report_subscription_event
FOREIGN KEY (pbi_report_event_key)
REFERENCES config.pbi_report_event (pbi_report_event_key);


-- Step 1: Drop the foreign key constraint
ALTER TABLE [config].[pbi_report_subscription]
DROP CONSTRAINT [FK_pbi_report_subscription_event];
GO

-- Step 2: Drop the column
ALTER TABLE [config].[pbi_report_subscription]
DROP COLUMN [pbi_report_event_key];
GO



-- Add columns to pbi_report (allow NULL)
ALTER TABLE config.pbi_report
ADD uploaded_by NVARCHAR(100) NULL,
    uploaded_at DATETIME NULL;

-- Add columns to pbi_report_audit (allow NULL)
ALTER TABLE config.pbi_report_audit
ADD uploaded_by NVARCHAR(100) NULL,
    uploaded_at DATETIME NULL;



-- Remove columns from pbi_report
ALTER TABLE config.pbi_report
DROP COLUMN uploaded_by,
             uploaded_at;

-- Remove columns from pbi_report_audit
ALTER TABLE config.pbi_report_audit
DROP COLUMN uploaded_by,
             uploaded_at;