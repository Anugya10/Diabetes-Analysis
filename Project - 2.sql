Select * from Diabetes_analytics.dbo.diabetes;

/*This dataset is originally from the National Institute of Diabetes and Digestive and Kidney Diseases. 
The objective of the dataset is to diagnostically predict whether a patient has diabetes
based on certain diagnostic measurements included in the dataset. 
Several constraints were placed on the selection of these instances from a larger database. 
In particular, all patients here are females at least 21 years old of Pima Indian heritage.*/


--What is the distribution of diabetes outcomes in the dataset (i.e., how many patients have diabetes, and how many do not)?
  Select outcome, count(1) as Diabetes_patient
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1
  Group by outcome;
  --268

  Select outcome, count(1) as Diabetes_patient
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 0
  Group by outcome;
  --500

--Is there a correlation between the number of pregnancies and the likelihood of having diabetes?
  Select max(pregnancies) as Highest_no_of_pregnencies
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --17

  Select Avg(pregnancies) as Average_no_of_pregnencies
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --4

  Select min(pregnancies) as Lowest_no_of_pregnencies
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --0

--Are there any correlations between the glucose levels and the likelihood of having diabetes?
  Select max(glucose) as Highest_level_of_glucose
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age <= 30;
  --199

  Select avg(glucose) as Highest_level_of_glucose
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age <= 30;
  --140

  Select min(glucose) as Lowest_level_of_glucose
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age <= 30;
  --78

  Select max(glucose) as Highest_level_of_glucose
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age <= 50;
  --199

  Select Avg(glucose) as Average_level_of_glucose
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age <= 50;
  --139

  Select min(glucose) as Lowest_level_of_glucose
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age <= 50;
  --0

  Select max(glucose) as Lowest_level_of_glucose
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age <= 65;
  --199

  Select avg(glucose) as Lowest_level_of_glucose
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age <= 65;
  --140

  Select min(glucose) as Lowest_level_of_glucose
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age <= 65;
  --0

--How does insulin level relate to the presence of diabetes?
  Select max(Insulin) as Highest_level_of_insulin
  From Diabetes_analytics.dbo.diabetes
  Where Outcome = 1;
  --846

  Select Avg(Insulin) as Average_level_of_insulin
  From Diabetes_analytics.dbo.diabetes
  Where Outcome = 1;
  --100

  Select min(Insulin) as Lowest_level_of_insulin
  From Diabetes_analytics.dbo.diabetes
  Where Outcome = 1;
  --0

--Is there any relationship between blood pressure and the likelihood of having diabetes?
  Select max(bloodpressure) as Highest_level_of_bloodpressure
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --114

  Select avg(bloodpressure) as Average_level_of_bloodpressure
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --70

  Select min(bloodpressure) as Lowest_level_of_bloodpressure
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --0

--What is the distribution of BMI values among patients with and without diabetes?
  Select max(BMI) as Highest_of_BMI
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --67.0999984741211

  Select avg(BMI) as Average_of_BMI
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --35.1425373376305

  Select max(BMI) as Highest_of_BMI
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 0;
  --57.2999992370605

  Select avg(BMI) as Average_of_BMI
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 0;
  --30.3042000083923

--How does age factor into the diagnosis of diabetes?
  Select Max(age) as Maximum_age
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --70

  Select Avg(age) as Average_age
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --37

  Select Min(age) as Minimum_age
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --21

--Is there a correlation between skin thickness and diabetes outcomes?
  Select Max(skinthickness) as Highest_level_of_skinthickness
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --99

  Select Avg(skinthickness) as Average_level_of_skinthickness
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --22

  Select Min(skinthickness) as Lowest_level_of_skinthickness
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1;
  --0

--What are the key differences in diagnostic measurements between patients with diabetes and those without?
  --Key differences which are the measurements for diagnosis - Age and blood pressure level
  Select Max(bloodpressure) as High_blood_pressure
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age > 30;
  --114

  Select Max(bloodpressure) as High_blood_pressure
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age > 50;
  --110

  Select Max(bloodpressure) as High_blood_pressure
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age > 65;
  --92

  Select Avg(bloodpressure) as Avg_blood_pressure
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age > 30;
  --74

  Select Avg(bloodpressure) as High_blood_pressure
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age > 50;
  --81

  Select Avg(bloodpressure) as High_blood_pressure
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age > 65;
  --85


  Select Avg(Glucose) as High_blood_pressure
  From Diabetes_analytics.dbo.diabetes
  Where outcome = 1 and age > 65;