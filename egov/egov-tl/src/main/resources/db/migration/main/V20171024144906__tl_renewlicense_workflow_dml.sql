Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','New','','License Creation Pending','Senior Assistant,Junior Assistant','RENEWLICENSE','Renewal Initiated','First level Collection pending','Senior Assistant,Junior Assistant','CREATED','Save',null,null,'2015-04-01','2099-04-01',0,'all',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'PUBLIC HEALTH AND SANITATION','TradeLicense','New','','License Creation Pending','','CSCOPERATORRENEWLICENSE','Renewal Initiated','First level Collection pending','Senior Assistant,Junior Assistant','CREATED','Save',null,null,'2015-04-01','2099-04-01',0,'all',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Renewal Initiated','','First level Collection pending','Senior Assistant,Junior Assistant','RENEWLICENSE','First Level Fee Collected','Assistant Approval Pending','Senior Assistant,Junior Assistant','','Cancel',null,null,'2015-04-01','2099-04-01',0,'all',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','First Level Fee Collected','','Assistant Approval Pending','Senior Assistant,Junior Assistant','RENEWLICENSE','Assistant Approved','SI Approval Pending','Sanitary Inspector','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Approved','','SI Approval Pending','Sanitary Inspector','RENEWLICENSE','Sanitary Inspector Approved','','Sanitary Supervisor,Assistant Medical Officer of Health,Municipal Health Officer,Chief Medical Officer of Health,Commissioner','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','SS Verification Pending','Sanitary Supervisor','RENEWLICENSE','Sanitary Supervisor Verified','','Assistant Medical Officer of Health,Municipal Health Officer,Chief Medical Officer of Health,Commissioner','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','Municipal Health Officer Approval Pending','Municipal Health Officer','RENEWLICENSE','Municipal Health Officer88 Approved','','Chief Medical Officer of Health,Commissioner','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','Commissioner Approval Pending','Commissioner','RENEWLICENSE','Commissioner Approved','Digital Signature Pending','Commissioner','','Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Verified','','Municipal Health Officer Approval Pending','Municipal Health Officer','RENEWLICENSE','Municipal Health Officer Approved','Digital Signature Pending','Chief Medical Officer of Health,Commissioner','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Verified','','Commissioner Approval Pending','Commissioner','RENEWLICENSE','Commissioner Approved','Digital Signature Pending','Commissioner','','Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Municipal Health Officer Approved','','Digital Signature Pending','Municipal Health Officer','RENEWLICENSE','Municipal Health Officer Approved',null,'Chief Medical Officer of Health,Commissioner','','Forward,Preview,Sign',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Municipal Health Officer Approved','','Commissioner Approval Pending','Commissioner','RENEWLICENSE','Commissioner Approved','Digital Signature Pending','Commissioner','','Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Commissioner Approved','','Digital Signature Pending','Commissioner','RENEWLICENSE','Digitally Signed','','','','Preview,Sign',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','Municipal Health Officer Approval Pending','Municipal Health Officer','RENEWLICENSECOLLECTION','Municipal Health Officer Approved','Second Level Collection Pending','Municipal Health Officer','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Municipal Health Officer Approved','','Second Level Collection Pending','Municipal Health Officer','RENEWLICENSECOLLECTION','Second Level Collection Paid','Digital Signature Pending','Municipal Health Officer','','Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','Commissioner Approval Pending','Commissioner','RENEWLICENSECOLLECTION','Commissioner Approved','Second Level Collection Pending','Commissioner','','Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Commissioner Approved','','Second Level Collection Pending','Commissioner','RENEWLICENSECOLLECTION','Second Level Collection Paid','Digital Signature Pending','Commissioner','','Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Verified','','Municipal Health Officer Approval Pending','Municipal Health Officer','RENEWLICENSECOLLECTION','Municipal Health Officer Approved','Second Level Collection Pending','Chief Medical Officer of Health,Commissioner','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Verified','','Commissioner Approval Pending','Commissioner','RENEWLICENSECOLLECTION','Commissioner Approved','Second Level Collection Pending','Commissioner','','Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Municipal Health Officer Approved','','Commissioner Approval Pending','Commissioner','RENEWLICENSECOLLECTION','Commissioner Approved','Second Level Collection Pending','Commissioner','','Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Second Level Collection Paid','','Digital Signature Pending','Municipal Health Officer','RENEWLICENSE','Second Level Collection Paid','','Chief Medical Officer of Health,Commissioner','','Forward,Preview,Sign',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Second Level Collection Paid','','Digital Signature Pending','Commissioner','RENEWLICENSE','Digitally Signed','END','','','Preview,Sign',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','SS Verification Pending','Sanitary Supervisor','RENEWLICENSECOLLECTION','Sanitary Supervisor Verified','','Assistant Medical Officer of Health,Municipal Health Officer,Chief Medical Officer of Health,Commissioner','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Approved','','SI Approval Pending','Sanitary Inspector','RENEWLICENSEREJECT','Sanitary Inspector Rejected','Assistant Approval Pending','Senior Assistant,Junior Assistant','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Rejected','','Assistant Approval Pending','Senior Assistant,Junior Assistant','RENEWLICENSE','Assistant Approved','SI Approval Pending','Senior Assistant,Junior Assistant','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','SS Verification Pending','Sanitary Supervisor','RENEWLICENSEREJECT','Sanitary Supervisor Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Rejected','','SI Approval Pending','Sanitary Inspector','RENEWLICENSE','Sanitary Inspector Approved','','Sanitary Supervisor,Assistant Medical Officer of Health,Municipal Health Officer,Chief Medical Officer of Health,Commissioner,','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','Municipal Health Officer Approval Pending','Municipal Health Officer','RENEWLICENSEREJECT','Municipal Health Officer Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Municipal Health Officer Rejected','','SI Approval Pending','Sanitary Inspector','RENEWLICENSE','Sanitary Inspector Approved','','Sanitary Supervisor,Assistant Medical Officer of Health,Municipal Health Officer,Chief Medical Officer of Health,Commissioner','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','Commissioner Approval Pending','Commissioner','RENEWLICENSEREJECT','Commissioner Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Commissioner Rejected','','SI Approval Pending','Sanitary Inspector','RENEWLICENSE','Sanitary Inspector Approved','','Sanitary Supervisor,Assistant Medical Officer of Health,Municipal Health Officer,Chief Medical Officer of Health,Commissioner','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Municipal Health Officer Approved','','','Commissioner','RENEWLICENSEREJECT','Commissioner Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Commissioner Approved','','Second Level Collection Pending','Commissioner','RENEWLICENSEREJECT','Commissioner Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Municipal Health Officer Approved','','Second Level Collection Pending','Municipal Health Officer','RENEWLICENSEREJECT','Municipal Health Officer Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','Assistant Medical Officer of Health Approval Pending','Assistant Medical Officer of Health','RENEWLICENSE','Assistant Medical Officer of Health Approved','','Municipal Health Officer,Chief Medical Officer of Health,Commissioner','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','Assistant Medical Officer of Health Approval Pending','Assistant Medical Officer of Health','RENEWLICENSECOLLECTION','Assistant Medical Officer of Health Approved','','Municipal Health Officer,Chief Medical Officer of Health,Commissioner','Second Level Collection Pending','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','Chief Medical Officer of Health Approval Pending','Chief Medical Officer of Health','RENEWLICENSE','Chief Medical Officer of Health Approved','','Commissioner','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','Chief Medical Officer of Health Approval Pending','Chief Medical Officer of Health','RENEWLICENSECOLLECTION','Chief Medical Officer of Health Approved','','Commissioner','Second Level Collection Pending','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Verified','','Assistant Medical Officer of Health Approval Pending','Assistant Medical Officer of Health','RENEWLICENSE','Assistant Medical Officer of Health Approved','','Municipal Health Officer,Chief Medical Officer of Health,Commissioner','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Verified','','Assistant Medical Officer of Health Approval Pending','Assistant Medical Officer of Health','RENEWLICENSECOLLECTION','Assistant Medical Officer of Health Approved','','Municipal Health Officer,Chief Medical Officer of Health,Commissioner','Second Level Collection Pending','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Verified','','Chief Medical Officer of Health Approval Pending','Chief Medical Officer of Health','RENEWLICENSE','Chief Medical Officer of Health Approved','','Commissioner','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Verified','','Chief Medical Officer of Health Approval Pending','Chief Medical Officer of Health','RENEWLICENSE','Chief Medical Officer of Health Approved','','Commissioner','Second Level Collection Pending','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Approved','','Chief Medical Officer of Health Approval Pending','Chief Medical Officer of Health','RENEWLICENSE','Chief Medical Officer of Health Approved','','Commissioner','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Approved','','Chief Medical Officer of Health Approval Pending','Chief Medical Officer of Health','RENEWLICENSECOLLECTION','Chief Medical Officer of Health Approved','','Commissioner','Second Level Collection Pending','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Approved','','Municipal Health Officer Approval Pending','Municipal Health Officer','RENEWLICENSE','Municipal Health Officer Approved','','Chief Medical Officer of Health,Commissioner','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Approved','','Municipal Health Officer Approval Pending','Municipal Health Officer','RENEWLICENSECOLLECTION','Municipal Health Officer Approved','Second Level Collection Pending','Chief Medical Officer of Health,Commissioner','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Approved','','Commissioner Approval Pending','Commissioner','RENEWLICENSE','Commissioner Approved','','Commissioner','','Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Approved','','Commissioner Approval Pending','Commissioner','RENEWLICENSECOLLECTION','Commissioner Approved','Second Level Collection Pending','Commissioner','','Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Municipal Health Officer Approved','','Chief Medical Officer of Health Approval Pending','Chief Medical Officer of Health','RENEWLICENSE','Chief Medical Officer of Health Approved','','Commissioner','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Municipal Health Officer Approved','','Chief Medical Officer of Health Approval Pending','Chief Medical Officer of Health','RENEWLICENSECOLLECTION','Chief Medical Officer of Health Approved','','Commissioner','Second Level Collection Pending','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Chief Medical Officer of Health Approved','','Digital Signature Pending','Chief Medical Officer of Health','RENEWLICENSE','Chief Medical Officer of Health Approved','','Commissioner','','Forward,Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',true,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Chief Medical Officer of Health Approved','','Commissioner Approval Pending','Commissioner','RENEWLICENSE','Commissioner Approved','','Commissioner','','Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Chief Medical Officer of Health Approved','','Second Level Collection Pending','Chief Medical Officer of Health','RENEWLICENSECOLLECTION','Second Level Collection Paid','Digital Signature Pending','Chief Medical Officer of Health','','Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,true,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Chief Medical Officer of Health Approved','','Commissioner Approval Pending','Commissioner','RENEWLICENSECOLLECTION','Commissioner Approved','Second Level Collection Pending','Commissioner','','Approve,Reject',null,null,'2015-04-01','2099-04-01',0,'parentBoundary,boundary',false,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','Assistant Medical Officer of Health Approval Pending','Assistant Medical Officer of Health','RENEWLICENSEREJECT','Assistant Medical Officer of Health Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Rejected','','SI Approval Pending','Sanitary Inspector','RENEWLICENSE','Sanitary Inspector Approved','','Sanitary Supervisor,Assistant Medical Officer of Health,Municipal Health Officer,Chief Medical Officer of Health,Commissioner','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Inspector Approved','','Chief Medical Officer of Health Approval Pending','Chief Medical Officer of Health','RENEWLICENSEREJECT','Chief Medical Officer of Health Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Chief Medical Officer of Health Rejected','','SI Approval Pending','Sanitary Inspector','RENEWLICENSE','Sanitary Inspector Approved','','Sanitary Supervisor,Assistant Medical Officer of Health,Municipal Health Officer,Chief Medical Officer of Health,Commissioner','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Approved','','','Municipal Health Officer','RENEWLICENSEREJECT','Municipal Health Officer Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Approved','','','Chief Medical Officer of Health','RENEWLICENSEREJECT','Chief Medical Officer of Health Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Approved','','','Commissioner','RENEWLICENSEREJECT','Commissioner Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Municipal Health Officer Approved','','','Chief Medical Officer of Health','RENEWLICENSEREJECT','Chief Medical Officer of Health Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Chief Medical Officer of Health Approved','','','Commissioner','RENEWLICENSEREJECT','Commissioner Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Approved','','Second Level Collection Pending','Assistant Medical Officer of Health','RENEWLICENSEREJECT','Assistant Medical Officer of Health Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Chief Medical Officer of Health Approved','','Second Level Collection Pending','Chief Medical Officer of Health','RENEWLICENSEREJECT','Chief Medical Officer of Health Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Verified','','Municipal Health Officer Approval Pending','Municipal Health Officer','RENEWLICENSEREJECT','Municipal Health Officer Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Verified','','Assistant Medical Officer of Health Approval Pending','Assistant Medical Officer of Health','RENEWLICENSEREJECT','Assistant Medical Officer of Health Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Verified','','Chief Medical Officer of Health Approval Pending','Chief Medical Officer of Health','RENEWLICENSEREJECT','Chief Medical Officer of Health Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Verified','','Commissioner Approval Pending','Commissioner','RENEWLICENSEREJECT','Commissioner Rejected','SI Approval Pending','Sanitary Inspector','','Forward,Reject',null,null,'2015-04-01','2099-04-01',0,'tradeArea_weight,parentBoundary,boundary',true,false,null,true);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Rejected','','','Sanitary Inspector','RENEWLICENSEREJECT','Sanitary Inspector Rejected','Assistant Approval Pending','Senior Assistant,Junior Assistant','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Rejected','','','Sanitary Inspector','RENEWLICENSEREJECT','Sanitary Inspector Rejected','Assistant Approval Pending','Senior Assistant,Junior Assistant','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Municipal Health Officer Rejected','','','Sanitary Inspector','RENEWLICENSEREJECT','Sanitary Inspector Rejected','Assistant Approval Pending','Senior Assistant,Junior Assistant','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Chief Medical Officer of Health Rejected','','','Sanitary Inspector','RENEWLICENSEREJECT','Sanitary Inspector Rejected','Assistant Approval Pending','Senior Assistant,Junior Assistant','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Commissioner Rejected','','','Sanitary Inspector','RENEWLICENSEREJECT','Sanitary Inspector Rejected','Assistant Approval Pending','Senior Assistant,Junior Assistant','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Sanitary Supervisor Rejected','','','Sanitary Inspector','NEWLICENSEREJECT','Sanitary Inspector Rejected','Assistant Approval Pending','Senior Assistant,Junior Assistant','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Assistant Medical Officer of Health Rejected','','','Sanitary Inspector','NEWLICENSEREJECT','Sanitary Inspector Rejected','Assistant Approval Pending','Senior Assistant,Junior Assistant','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Municipal Health Officer Rejected','','','Sanitary Inspector','NEWLICENSEREJECT','Sanitary Inspector Rejected','Assistant Approval Pending','Senior Assistant,Junior Assistant','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Chief Medical Officer of Health Rejected','','','Sanitary Inspector','NEWLICENSEREJECT','Sanitary Inspector Rejected','Assistant Approval Pending','Senior Assistant,Junior Assistant','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);
Insert into eg_wf_matrix values(nextval('seq_eg_wf_matrix'),'ANY','TradeLicense','Commissioner Rejected','','','Sanitary Inspector','NEWLICENSEREJECT','Sanitary Inspector Rejected','Assistant Approval Pending','Senior Assistant,Junior Assistant','','Forward,Cancel',null,null,'2015-04-01','2099-04-01',0,'all',true,false,null,null);

update eg_wf_matrix set rejectenabled=null where objecttype='TradeLicense' and additionalrule = 'NEWLICENSE' and currentstate = 'Assistant Approved' and rejectenabled=true;
update eg_wf_matrix set rejectenabled=null where objecttype='TradeLicense' and currentstate = 'Sanitary Inspector Approved' and rejectenabled=true and additionalrule = 'NEWLICENSE';
update eg_wf_matrix set rejectenabled=true where objecttype='TradeLicense' and  additionalrule='NEWLICENSEREJECT' and currentstate <>'Assistant Approved';
update eg_wf_matrix set validactions='Forward,Cancel,Generate Provisional Certificate' where objecttype  ='TradeLicense' and currentstate='First Level Fee Collected';
update eg_wf_matrix set enablefields='tradeArea_weight,parentBoundary,boundary' where objecttype='TradeLicense' and additionalrule in ('NEWLICENSE','NEWLICENSECOLLECTION','NEWLICENSEREJECT','RENEWLICENSE','RENEWLICENSECOLLECTION','RENEWLICENSEREJECT') and currentdesignation in ('Sanitary Inspector','Sanitary Supervisor') ;
update eg_wf_matrix set enablefields ='adhaarId,mobilePhoneNumber,applicantName,fatherOrSpouseName,emailId,licenseeAddress,tradeArea_weight' where objecttype='TradeLicense' and additionalrule like 'RENEWLICENSE%' and currentdesignation='Senior Assistant,Junior Assistant';
