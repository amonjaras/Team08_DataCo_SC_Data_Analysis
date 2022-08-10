# **DataCo Supply Chain Project**

## **Index**

- [Our Team](#our-team)
- [Overview](#overview)
- [Business Problem](#business-problem)
- [Our Goal](#our-goal)
- [Resources](#resources)
- [ERD](#entity-relationship-diagram-(erd))
- [Data Analysis](#data-analysis)
- [Acknowledgements](#acknowledgements)

### **Our Team**

| Member |
| :----: |
| MONJARAS Audrey |
| NEWMAN Brent |
| WILLIAMS Brandon-Scott |

### **Overview**

DataCo Global is a company dedicated to provisioning, production, sales and commercial distribution. DataCo has a global distribution within five different markets:

- Africa
- Europe
- LATAM
- Pacific Asia
- USCA

DataCo has 3 different types of products in the market:

- Clothing
- Sports
- Electronic Supplies

### **Business Problem**

During the last 5 years DataCo Global has experienced an increase on "Late deliveries" in all the markets. Business Managers and Directors from DataCo Global are looking for a solution to improve and have their company recognized as On-time delivery.

### **Our Goal**

Supply chain disruptions are consequence of different factors as:

- Lack of visibility
- Inadequate technology
- Motor vehicle troubles
- Lost packages
- Weather Conditions
- Traffic
- High Volume shipments
- Failed delivery attempt
- Customs
- Lack of clarity

Our goal is directed into answering the following questions:

- **How to predict the supply chain disruption?**
- **What type of features are impacting those disruptions?**

### **Resources**

#### **Data**

The datasets used for this project are taken from **Kaggle**

[DataCo Dataset](https://www.kaggle.com/datasets/shashwatwork/dataco-smart-supply-chain-for-big-data-analysis?datasetId=435331)

Three different files were used:

- Structured Data: DataCoSupplyChainDataset.csv
- Unstructured Data: tokenizedaccesslogs.csv
- Variable Description: DescriptionDataCoSupplyChain.csv

#### **Presentation**

The presentation for this project can be found on the following link

[Presentation](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Presentation/T8_DataCo_Final.pdf)

#### **Tools Used**

**Analysis**

- Python
 - Pandas
 - Numpy
 - Matplotlib
 - Seaborn
 - Geopandas

**Database**

- PostgreSQL
- Amazon Web services

**Visualization**

- Python [ETL Code](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/ETL/DataCo_ETL.ipynb)
- Tableau [Dashboard](https://public.tableau.com/app/profile/brent.newman/viz/Final_project_vizualizations/FinalStory?publish=yes)

**Machine Learning**

- Logistic Regression

**Notebook**

- Jupyter Notebook

### **Entity Relationship Diagram (ERD)**

![ERD](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/Revamped_ERD.png)

### **Data Analysis**

#### **Data Exploration**

In order to analyze the data, we need to follow the ETL(**E**xtract, **T**ransform and **L**oad) process. *Fig 1*

> *Fig 1: ETL Process*

![ETL](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/etl.png)

We have extracted the data from the main source, as a first step we checked if the data contained `Null` values and drop them. We also dropped columns with unnecessary information for our analysis.

We removed data with no variance, since is repetitive and will have an impact on our analysis.

Finally we were able to generate a correlation matrix between variables in order to identify and discard redundancies in our dataset. *Fig 2*

> *Fig 2: correlation matrix*

![matrix](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/matrix.png)

Finally we have created a clean dataset and performed some visualizations.

**Shipment Dataset**

Since DataCo experienced high rate on late deliveries, we visualized the rate by year.

> *Fig 3: Delivery Status per Year*

![peryear](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/deliveryperyear.png)

We also compared the Delivery Status by Payment Type to see if there was a relationship between the them. As showed on *Fig 4* type of payment is not the root cause of the late deliveries.

![payment](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/deliveryperpayment.png)

**Finance Dataset**

> *Fig 5: Sales Demand per Market*

![sales](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/Sales_Demand_per_Market.png)

*Fig 5* confirms that higher sales are distributed in the three main markets mentioned previously.

> *Fig 6: Store location by Country*

![store](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/storelocation.png)

In this dataset the Latitude and Longitude represents the location of the stores. As showed on *Fig 6* majority of the stores are located in North America.

We can suggest to DataCo to open more Stores or Distribution Centres within the rest of the market. By having North America as main Distributor, we are adding features contributing to the disruptions. Some of the possibilities could be; lost packages, weather conditions, customs.

#### **Database**

With our clean dataset, we decided to use AWS services, by creating a database using AWS RDS; this service will allow us to have a local connection with our pdAdmin Installation.

Creation of Tables is done with pgAdmin, to populate the tables to AWS we require the S3 and buckets services. With the buckets on line we will give access to the rest of the team for deeper analysis.

> *Fig 7: Database connection*

![database](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/database.PNG)

#### **Machine Learning**

Logistic Regression is an example of supervised learning. Used to calculate / predict the probability of a binary event occurring.
Increasing the accuracy of the model using neural networks and different models.
We used the logistic regression model because it is a very simple model that is capable of solving our problem.

On our fist trial we got an accuracy of 50%, after removing more columns, our analysis gave us an accuracy of 70%

Analyzing the features, it is evident that the Second Class shipment is creating the largest negative impact on deliveries.

> *Fig 8: Relevant Features*

![ml](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/Most%20Relevant%20features.PNG)

### **Acknowledgements**

Thanks to:

- **Univeristy of Toronto**
- Instructor **Hassan Ahmed**
- Teaching Instructor for this project **Laurel Lobo**
