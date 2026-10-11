create database Hospital_data_analysis;
use Hospital_data_analysis;



select * from dbo.Healthcare_dataset;



update dbo.healthcare_dataset
set length_of_stay=
datediff(day,date_of_admission,discharge_date);


select count(name) as total_no_of_patients from dbo.healthcare_dataset;



select avg(billing_amount) as average_billing_amount from  dbo.healthcare_dataset;


select min(billing_amount) as min_billing_amount from  dbo.healthcare_dataset;



select max(billing_amount) as max_billing_amount from  dbo.healthcare_dataset;



select sum(billing_amount) as total_billing_amount from  dbo.healthcare_dataset;



select medical_condition,count(medical_condition) as no_patients
from dbo.healthcare_dataset
group by medical_condition;




select admission_type,count(admission_type) as no_patients
from dbo.healthcare_dataset
group by admission_type;



select medical_condition,avg(billing_amount) as condition_based_avg_bill
from dbo.healthcare_dataset
group by medical_condition;



select medical_condition,avg(length_of_stay) as No_of_days_stayed
from dbo.healthcare_dataset
group by medical_condition;



select gender,count(name) as total_patients
from dbo.healthcare_dataset
group by gender;



select test_results,count(name) as test_results_count
from dbo.healthcare_dataset
group by test_results;


select insurance_provider,count(name) as insurance_patient_count
from dbo.healthcare_dataset
group by insurance_provider;


select admission_type,avg(billing_amount) as avg_bill_based_on_admission_type
from dbo.healthcare_dataset
group by admission_type;



select admission_type,avg(length_of_stay) as avg_length_of_stay
from dbo.healthcare_dataset
group by admission_type;



select medication,count(name) as no_of_medication
from dbo.healthcare_dataset
group by medication;



select insurance_provider,avg(billing_amount) as avg_bill_based_on_insurance_provider
from dbo.healthcare_dataset
group by insurance_provider;




select insurance_provider,avg(length_of_stay) as avg_days_stayed_based_on_insurance_provider
from dbo.healthcare_dataset
group by insurance_provider;




select blood_type,count(name) as count_of_patients_based_on_bloodtype
from dbo.healthcare_dataset
group by blood_type;



select max(age) as max_age,
min(age) as min_age,
avg(age) as avg_age
from dbo.healthcare_dataset;



select medical_condition,gender,count(name) as patients_by_gender_and_medicalcondition
from dbo.healthcare_dataset
group by medical_condition,gender;



select gender,avg(billing_amount) as avg_bill_based_on_gender
from dbo.healthcare_dataset
group by gender;


select  top 5 medical_condition,avg(billing_Amount) as avg_billing_amount
from dbo.healthcare_dataset
group by medical_condition
order by avg(billing_amount) desc
;


select top 5 name,length_of_stay as long_stayed
from dbo.healthcare_dataset

order by length_of_stay desc

;



select name,billing_amount
from dbo.healthcare_dataset
where billing_amount>(select avg(billing_amount)
from dbo.healthcare_dataset);



select medical_condition,avg(billing_amount) as avg_bill
from dbo.healthcare_dataset
group by medical_condition
having avg(billing_amount)>
(select avg(billing_amount)
from dbo.healthcare_dataset);



select Name,billing_amount,
  case 
    when billing_Amount <= 15000 then 'Low'
    when billing_Amount <= 30000 then 'Medium'
    else  'High'
 
   end as billing_category
from dbo.healthcare_dataset;




select billing_category,count(*) as billing_count
from(
     select 
          case
           when billing_amount<=15000 then 'Low'
           when billing_amount<=30000 then 'Medium'
           else 'High'
           end as billing_category
    from  dbo.healthcare_dataset) as categorized_data
group by billing_category;



WITH billing_count AS (
    SELECT
        CASE
            WHEN billing_amount <= 15000 THEN 'Low'
            WHEN billing_amount <= 30000 THEN 'Medium'
            ELSE 'High'
        END AS billing_category,
        COUNT(*) AS billing_count
    FROM dbo.healthcare_dataset
    GROUP BY
        CASE
            WHEN billing_amount <= 15000 THEN 'Low'
            WHEN billing_amount <= 30000 THEN 'Medium'
            ELSE 'High'
        END
)
SELECT
    billing_category,
    billing_count,
    SUM(billing_count) OVER() AS total_count,
    (billing_count * 100.0) / SUM(billing_count) OVER() AS percentage
FROM billing_count;



SELECT
    Medical_Condition,
    AVG(Billing_Amount) AS avg_bill,
    RANK() OVER (
        ORDER BY AVG(Billing_Amount) DESC
    ) AS billing_rank
FROM dbo.healthcare_dataset
GROUP BY Medical_Condition;


CREATE VIEW vw_AverageBillingByCondition AS
SELECT
    Medical_Condition,
    AVG(Billing_Amount) AS avg_bill
FROM dbo.healthcare_dataset
GROUP BY Medical_Condition;


select * from vw_AverageBillingByCondition;


