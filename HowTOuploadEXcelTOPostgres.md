How to upload EXcel file to Postgres with pgAdmin

1 Create a table:

'''
CREATE TABLE kickstarter
(created_at DATE,
 launched_at DATE,
 deadline DATE,
 currency VARCHAR,
 backers_count INTEGER,
 static_usd_rate DECIMAL,
 pledged DECIMAL,
 usd_pledged DECIMAL,
 goal INTEGER,
 city VARCHAR,
 state VARCHAR,
 country TEXT,
 source_url VARCHAR (255),
 staff_pick BOOLEAN,
 status TEXT
);
'''