# url-shortener
Let's Build: Url Shortener Course 


// src/components/ReportStatusCard.tsx

import React, { useEffect, useState } from 'react';
import { fetchReportStatus } from '../services/reportStatusService';
import { ReportStatus } from '../models/ReportStatus';

export const ReportStatusCard = () => {
  const [status, setStatus] = useState<ReportStatus | null>(null);

  useEffect(() => {
    const loadReportStatus = async () => {
      const reportData = await fetchReportStatus(); // Store in a variable
      setStatus(reportData); // Then use that to set state
    };

    loadReportStatus();
  }, []);

  if (!status) return <div>Loading...</div>;

  return (
    <div>
      <h3>Report Status Summary</h3>
      <ul>
        <li>In Progress: {status.inProgress}</li>
        <li>Completed: {status.completed}</li>
        <li>Failed: {status.failed}</li>
      </ul>
    </div>
  );
};