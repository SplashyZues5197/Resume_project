select * from fact_stamps;
-- Getting data for 2019 year

select * from fact_stamps where new_month < '2020-01-01';

-- getting data for all the revenue in 2019\

select * from `2019_regit_renv`;
select dist_code,  sum(documents_registered_rev),  sum(estamps_challans_rev) from `2019_regit_renv` group
 by dist_code order by sum(documents_registered_rev) desc;

-- getting data for 2022 year

select * from fact_stamps where new_month > '2022-03-01' and new_month < '2023-01-01';

-- getting data for all revenue
select * from `2022_regit_renv`;
select dist_code,  sum(documents_registered_rev),  sum(estamps_challans_rev) from `2022_regit_renv` group
 by dist_code order by sum(documents_registered_rev) desc;
 
 -- getting data for estamps
 select * from fact_stamps where new_month > '2021-12-01' and new_month < '2023-01-01' ;
 select dist_code, sum(documents_registered_rev),  sum(estamps_challans_rev) from `2022_estamps` group
 by dist_code order by sum(estamps_challans_rev) desc;
 
 -- getting data since the estamps started 
 select * from fact_stamps  where new_month > '2020-11-01' ;
  select  new_month, sum(documents_registered_cnt), sum(documents_registered_rev), sum(estamps_challans_cnt), sum(estamps_challans_rev)  from fact_stamps  where new_month > '2020-11-01' group
 by new_month;
 
 
 
 -- getting data for question number 4
 select * from fact_stamps where new_month > '2020-11-01' and new_month < '2023-01-01';
  select dist_code, sum(documents_registered_cnt), sum(documents_registered_rev), sum(estamps_challans_cnt), sum(estamps_challans_rev) from `segment_data_v1` group
 by dist_code
 
 
 -- transportation data
 
alter table fact_transport add column new_month date;


