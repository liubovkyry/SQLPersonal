CREATE TEMP TABLE target(data jsonb);
copy target from 'C:\Users\liubo\Desktop\NewProject\jsonCovid3.json';


create table CovidFeatures(business_id varchar(100), delivery_or_takeout varchar(100), highlights varchar(100),
call_to_action_enabled varchar(100), covid_banner varchar(100),
grubhub_enabled varchar(100), request_a_quote_enabled varchar(100),
temporary_closed_until varchar(100), virtual_services_offered varchar(100)
--, 
---constraint pk_business_id  primary key (business_id)
)
;



--  stg target to ODS  Postgres

insert into CovidFeatures
select data->'business_id' as business_id,
data->'delivery or takeout' as delivery_or_takeout,
data->'highlights',
data->'Call To Action enabled',
data->'Covid Banner', data->'Grubhub enabled', data->'Request a Quote Enabled', data->'Temporary Closed Until',
data->'Virtual Services Offered'

from target;


select * from covidfeatures

------------

-- rr 
drop table target

CREATE TEMP TABLE target(v jsonb);
copy target from 'C:\Users\liubo\Desktop\NewProject\jsonCovid3.json';


create table CovidFeatures(business_id varchar(100), delivery_or_takeout varchar(100), highlights varchar(100),
call_to_action_enabled varchar(100), covid_banner varchar(100),
grubhub_enabled varchar(100), request_a_quote_enabled varchar(100),
temporary_closed_until varchar(100), virtual_services_offered varchar(100)
--, 
---constraint pk_business_id  primary key (business_id)
)
;

--  stg target to ODS  Postgres
insert into CovidFeatures
select v->'business_id',
v->'delivery or takeout',
v->'highlights',
v->'Call To Action enabled',
v->'Covid Banner', v->'Grubhub enabled', v->'Request a Quote Enabled', v->'Temporary Closed Until',
v->'Virtual Services Offered'
from target;

truncate table CovidFeatures

select * from covidfeatures
