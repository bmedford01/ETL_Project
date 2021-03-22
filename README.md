# ETL_Project
UNCC Bootcamp ETL Project
Team Members
Akanksha, Brad and Cameron

    Our team chose two sources of data related to
the COVID pandemic in an effort to create an end product that could be used to analyze the relationship between COVID cases and vaccination data.

    For the Extract part of the project we first
downloaded CSV data from Kaggle.com related to vaccinations. We then loaded read that CSV data into a Pandas dataframe. Our second source was Covidtracking.com. From their API we scraped JSON data related to COVID cases. No API key was required as the data is public. We then loaded that data into a Pandas dataframe as well.

    For the Transform step of the project we
cleaned up the CSV in various ways including:
* Dropped columns.
* Reassigned data types. 
* Converted date data from its original “int” data type to the “datetime” format.
* Converted numeric data that was originally the “object” type to “int” type.
* Dropped Nan values.
* By doing this, several dates were dropped. This necessitated additional date filtering to line up the JSON data with the CSV data.
* Filtered by target country (USA)

    We then cleaned up the JSON data in various
ways as well including:
* Filtered the data by “date”, “positive” and “negative” cases.
* Dropped Nan values.
* Similarly to the CSV data, we converted various“float” data to “int”.
* We also had to do the date conversion of “int” to “Datetime”. It was in this step that we found it necessary to first convert ”int” to ”string” and then ”string” to ”Datetime”.
* Sorted values in ascending order to match CSV data.
* Filtered date range to match CSV data due to the fact that the Vaccine data necessarily had a narrower range of dates than COVID cases data.

    For the Load portion of the project we chose 
to create the database in pgAdmin because we felt it provided the easiest way to join the data together as well as be able to access the database using Pandas. 
    So, first we created tables for the data in
pgAdmin. We then used psycopg2 within Jupyter Notebook to create the engine and fetch data from pgAdmin. We then koined the tables (COVID Vaccination data from CSV and COVID Cases data from JSON) based on date for the final product.
This resulted in a unified dataframe that would give an analyst the ability to draw conclusions regarding growth of vaccine availability and decrease in cases.
