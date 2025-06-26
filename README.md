


❓ Unclear / Vague Points – Please Clarify

1️⃣ pbi_report_dataset

JIRA says "changes to dataset" — besides uploaded_by and uploaded_at, is there any other change intended?

Is there any new relationship or structure update expected?



---

2️⃣ pbi_report_dataset_audit

It mentions "changes in relation to dataset" — what is meant by this?

Just audit version of uploaded fields?

Any new business rule?




---

3️⃣ pbi_report_event

JIRA says something like: “relation to event which will trigger report in context of node”

What does "trigger report in context of node" actually mean?

Should we add a foreign key to nodes (PgReportNodes)?

Or is this purely used via PgReportEventTypes → Nodes navigation like in code?




---

4️⃣ pbi_report_subscription

Is the only required change to add an event_key column?

If yes, should it point to pbi_report_event or something else?

Is this meant to link subscriptions to a triggering event?




---

5️⃣ pbi_report_subscription_audit

JIRA just says "changes", but does not say what exactly.

Should it mirror event_key addition from the main subscription table?

Or is there any new requirement to track subscription lifecycle?





