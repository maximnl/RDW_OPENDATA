# RDW OPENDATA
Dutch cars licence plates registration data / kenteken registratie opendata RDW

Dutch cars registations data has many data quality issues which we correct here. 
For instance a tesla model S make can be stored in 5+ versions (handelsbenaming in dutch) - Tesla model S, model S , S70 etc... 
When we are counting / reporting on makes / details, this gives inacuarate results, although some "error makes names" can be very exotic and appear in a very low quantities/number of rows. 


# Other issues with RDW data are kept in a separate data as a product solution, which is not part of this repository but we mension the essence.

1 - Only current registrations are present in the data. About 1 M of cars is unregistered per year. This includes export and disasembly. 
you should know that a number plate in the Netherland is given for a lifetime and it does not change by buying /selling the car inside the country. 
Deleted records from RDW data are kept in our solution and marked as deleted with the date of deletion. Our data is updated daily. 
With thanks to RDW data comunity we were able to recover deleted data from 2019 untill now. Any analysis using our data before 2019 will be affected by 
records deletion process in RDW data. Because it is slow process , the data quality of time series will be acceptatble even before 2019 but it degrades with the years back. 

2. Data about engines is taken to the main set. RDW keeps engines data in a separated dataset which may have 2 records per car if a car has a gas installation and a bensine engine. THe same applies to hibrid cars, which have an electric and a bensine engine. thus two sources. This non 1:1 relations makes analysis more difficult especilly if you consider that for many analysis we need to know if a car is a hybrid one or LPG (has a gas installation). 
Therefor engines data was aggregated and summarized to be added to the main dataset. It includes summation of CO2 and total engines power. (power in the RDW dataset will be kept in different columns for electric and besine cars). 

3. The data set self OPENDATA.NL_RDW_KENTEKEN is available on Azure SQL in via an issue request in this repository.

<img width="1706" alt="image" src="https://user-images.githubusercontent.com/33482502/210547663-f93e60a4-7801-4d65-89f8-d27536c20dc9.png">

The data includes columns selection with low change probability. 

<img width="408" alt="image" src="https://user-images.githubusercontent.com/33482502/210547887-279f57be-b88a-4752-a234-d5e667c2f02d.png">


