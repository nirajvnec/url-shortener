-- Add columns to pbi_report (allow NULL)
ALTER TABLE config.pbi_report
ADD uploaded_by NVARCHAR(100) NULL,
    uploaded_at DATETIME NULL;

-- Add columns to pbi_report_audit (allow NULL)
ALTER TABLE config.pbi_report_audit
ADD uploaded_by NVARCHAR(100) NULL,
    uploaded_at DATETIME NULL;