CREATE TABLE conference_review
(
authorEmail VARCHAR(50) NOT NULL,
paperId INTEGER ,
PRIMARY KEY(authorEmail, paperId)
);

CREATE TABLE author
(
authorEmail VARCHAR(50) PRIMARY KEY,
author_fn VARCHAR(50),
author_ln VARCHAR(50),
contact_author VARCHAR(50)
);

CREATE TABLE paper
(
paperId INTEGER PRIMARY KEY,
paperTitle VARCHAR(50),
uploadedFileName VARCHAR(50),
reviewerEmail VARCHAR(50)
);

CREATE TABLE reviewer
(
reviewerEmail  VARCHAR(50);
reviewer_fn  VARCHAR(50);
affiliation  VARCHAR(50);
recommendation  VARCHAR(50);
);