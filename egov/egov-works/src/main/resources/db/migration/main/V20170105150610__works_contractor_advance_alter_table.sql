------------------START------------------
ALTER TABLE EGW_CONTRACTOR_ADVANCE ADD COLUMN CANCELLATIONREASON varchar(50);
ALTER TABLE EGW_CONTRACTOR_ADVANCE ADD COLUMN CANCELLATIONREMARKS varchar(126);
-------------------END-------------------
--rollback ALTER TABLE EGW_CONTRACTOR_ADVANCE DROP COLUMN CANCELLATIONREMARKS;
--rollback ALTER TABLE EGW_CONTRACTOR_ADVANCE DROP COLUMN CANCELLATIONREASON; 
