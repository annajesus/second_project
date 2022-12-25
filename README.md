![images](https://user-images.githubusercontent.com/108558769/206596859-100a808a-b2b5-4f92-9ff8-1bd8ee5cb0b2.png)

# Happy Coder Project
    * The team worked together to complete the ETL process on a dataset of our choice. We choose the World Happiness
    Report to analyze the countries that ranked the highest in overall happiness. We focused on comparing the suicide 
    rate and population growth based on those highest ranking countries. We then focused on one country, India, 
    in particular to further analyze closer those factors. 
![image](https://user-images.githubusercontent.com/108558769/206597608-09719ae3-d3b6-4b9e-9509-3524e77e5571.png)

# ETL: Extract, Transform, Load
    * ETL Pipeline using Python, Pandas, and SQLAlchemy
<img width="864" alt="Screen Shot 2022-12-08 at 8 16 42 PM" src="https://user-images.githubusercontent.com/108558769/206601742-e334f328-30c8-4a99-8d69-3a0dba471549.png">

## Extract: 
    * We used data from three CSV files from World Data and Kaggle.
    
    * We used Pandas to extract the data and put into Pandas DataFrame.
    
    * We developed an ERD to represent and define the attributes of the dataset and its relationships.
![image](https://user-images.githubusercontent.com/108558769/206594279-cdf6b5d3-d941-4a02-a45d-da2722987091.png)
    
## Transform: 
    * We used Python and Pandas to clean and structure the data in our desired form by filtering, aggregating, joining and selection. Each CSV
    was cleaned by removing unwanted data/columns. Columns were added to allow proper reference when assigning our primary key. Then reorganized
    and filtered the country list so that they properly matched as the primary key. Furthermore, we removed all NaN values for proper merging.
    
    
## Load:
    * We created a connection to the database. We created our table schema using pgAdmin & PostgreSQL. We then confirmed that the tables had been
    created. The transformed DataFrames were loaded into the postgreSQL table. The data was loaded into a relational database. 

## Happiness Score vs Population Growth
    *The results demonstrated a moderate negative correlation between the Happiness Score vs the Population Growth.
<img width="409" alt="Screen Shot 2022-12-08 at 9 01 51 PM" src="https://user-images.githubusercontent.com/108558769/206607338-63f32013-4225-49ce-9b76-fa951b24d871.png">
 

## Happiness Score vs Suicide Rate
    *The results showed no correlation between the Happiness Score vs Suicide Rate. 
<img width="402" alt="Screen Shot 2022-12-08 at 9 02 04 PM" src="https://user-images.githubusercontent.com/108558769/206607466-dad72870-de09-4271-b9ac-a9d338b3e5df.png">
