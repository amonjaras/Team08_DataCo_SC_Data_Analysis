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
- Tableau

**Machine Learning**

- Logistic Regression

**Notebook**

- Jupyter Notebook
- Google Colab

### **Entity Relationship Diagram (ERD)**

![ERD](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/Revamped_ERD.png)

### **Data Analysis**

#### **Cleaning the data**

> *Fig 1: correlation matrix*

![matrix](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/matrix.png)

With this matrix *Fig 1* we were able to identify the redundancies within the data.

> *Fig 2: Delivery Status by Market*

![deliverystatus](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/deliverystatus.png)

With *Fig 2* we observed that in all markets the amount of "Late deliveries" is higher than the rest.

We can focus on the three main markets with "Late Deliveries": **Europe**, **LATAM** and **Pacific Asia**

> *Fig 3: Sales Demand per Market*

![sales](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/Sales_Demand_per_Market.png)

*Fig 3* confirms that higher sales are distributed in the three main markets mentioned previously.

This could be part of the answer to **features impacting disruptions** meaning that a High Volume of shipments can affect the Deliveries.

> *Fig 4: Store location by Country*

![store](https://github.com/amonjaras/Team08_DataCo_SC_Data_Analysis/blob/main/Images/storelocation.png)

In this dataset the Latitude and Longitude represents the location of the stores. As showed on *Fig 4* majority of the stores are located in North America.

We can suggest to DataCo to open more Stores or Distribution Centres within the rest of the market. By having North America as main Distributor, we are adding features contributing to the disruptions. Some of the possibilities could be; lost packages, weather conditions, customs.


#### **Machine Learning**

Logistic regression estimates the probability of an event occurring given a finite set of expected outcomes.
Increasing the accuracy of the model using neural networks and different models.
We used the logistic regression model because it is a very simple model that is capable of solving our problem.

### **Acknowledgements**

Thanks to:

- Univeristy of Toronto
- Instructor Hassan Ahmed
- Teaching Instructor for this project Laurel Lobo
