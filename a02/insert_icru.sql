 -- INSERTING VALUES INTO author

INSERT INTO author VALUES ( 'arthur@gmail.com', 'Ramsh', 'Tran');

INSERT INTO author VALUES ( 'chris@gmail.com', 'Chris', 'Cumuo');

INSERT INTO author VALUES ( 'barne@gmail.com', 'Barne', 'Nobles');

INSERT INTO author VALUES ( 'dora@gmail.com', 'Dora', 'Wilfred');

INSERT INTO author VALUES ( 'yuno@gmail.com', 'Yun', 'Huang');

INSERT INTO author VALUES ( 'Rony@hotmail.com', 'Rony', 'Putter');

INSERT INTO author VALUES ( 'christie@hotmail.com', 'Christie', 'Manal');

-- INSERTING VALUES INTO reviewer

INSERT INTO reviewer VALUES ( 'ritu@uguelph.ca', 'Ritu', 'University of Guelph');

INSERT INTO reviewer VALUES ( 'scott@upitts.com', 'Scott', 'University of Pittsburg');

-- INSERTING VALUES INTO paper

INSERT INTO paper VALUES ( 1289, 'Concept Extraction from Python Source Code', 'ce_pc.pdf', 'ritu@uguelph.ca', 'Rejected');

INSERT INTO paper VALUES ( 1113, 'Big Data: comprehensive survey', 'bc_ds.pdf', 'scott@upitts.com', 'Accepted');

INSERT INTO paper VALUES ( 3281, 'Mining Knowledge from Source programs', 'mksp.pdf', 'ritu@uguelph.ca', 'Rejected');

INSERT INTO paper VALUES ( 1000, 'Bioinformatics review', 'br.pdf', 'ritu@uguelph.ca', 'Accepted');

INSERT INTO paper VALUES ( 2500, 'Java Tools', 'jt.pdf', 'scott@upitts.com', 'Rejected');

-- INSERTING VALUES INTO conference_review

INSERT INTO conference_review VALUES ( 'arthur@gmail.com', 1289, 'Yes');

INSERT INTO conference_review VALUES ( 'chris@gmail.com', 1289, 'No');

INSERT INTO conference_review VALUES ( 'barne@gmail.com', 1289, 'No');

INSERT INTO conference_review VALUES ( 'dora@gmail.com', 1289, 'No');

INSERT INTO conference_review VALUES ( 'yuno@gmail.com', 1113, 'Yes');

INSERT INTO conference_review VALUES ( 'Rony@hotmail.com', 1113, 'No');

INSERT INTO conference_review VALUES ( 'chris@gmail.com', 3281, 'Yes');

INSERT INTO conference_review VALUES ( 'christie@hotmail.com', 3281, 'No');

INSERT INTO conference_review VALUES ( 'christie@hotmail.com', 1000, 'Yes');

INSERT INTO conference_review VALUES ( 'Rony@hotmail.com', 2500, 'Yes');
