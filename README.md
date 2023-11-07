# RDW OPENDATA
Dutch cars licence plates registration data / kenteken registratie opendata RDW

Dutch cars registations data has many data quality issues which we correct here. 
For instance a tesla model S make can be stored in 5+ versions (handelsbenaming in dutch) - Tesla model S, model S , S70 etc... 
When we are counting / reporting on makes / details, this gives inacuarate results, although some "error makes names" can be very exotic and appear in a very low quantities/number of rows. 

Data improvement are applied to our customized RDW data (see below). You can apply the same fixes to yoor own data. Please consider sharing your fixes so we can improve data together and work as a community. 


# RDW data issues with respect to time series analysis

RDW data is kept in a separate data as a product Azure solution, which is not part of this repository. This solutions is mainly focusing on keeping RDW data history for time series analysis including data processing and presenting vai MAISED web app solution. Data improvement are well partially shared via this repository. 

Issue 1 - Only current registrations are present in the data. About 1 M of cars is unregistered per year. This includes export and disasembly. 
you should know that a number plate in the Netherland is given for a lifetime and it does not change by buying /selling the car inside the country. 
Deleted records from RDW data are kept in our solution and marked as deleted with the date of deletion. Our data is updated daily. 
With thanks to RDW data comunity we were able to recover deleted data from 2019 untill now. Any analysis using our data before 2019 will be affected by 
records deletion process in RDW data. Because it is slow process , the data quality of time series will be acceptatble even before 2019 but it degrades with the years back. 

Issue 2. Data about engines is taken to the main set. RDW keeps engines data in a separated dataset which may have 2 records per car if a car has a gas installation and a bensine engine. THe same applies to hibrid cars, which have an electric and a bensine engine. thus two sources. This non 1:1 relations makes analysis more difficult especilly if you consider that for many analysis we need to know if a car is a hybrid one or LPG (has a gas installation). 
Therefor engines data was aggregated and summarized to be added to the main dataset. It includes summation of CO2 and total engines power. (power in the RDW dataset will be kept in different columns for electric and besine cars). 

The data sets (the main OPENDATA.NL_RDW_KENTEKEN, engines, car inspection issues ) are available on Azure SQL. Access is via an issue request in this repository.

<img width="1706" alt="image" src="https://user-images.githubusercontent.com/33482502/210547663-f93e60a4-7801-4d65-89f8-d27536c20dc9.png">

The data includes columns selection with low change probability. 

<img width="408" alt="image" src="https://user-images.githubusercontent.com/33482502/210547887-279f57be-b88a-4752-a234-d5e667c2f02d.png">

# Kenteken data

URL

https://opendata.rdw.nl/resource/m9d7-ebf2.csv?$select=kenteken,voertuigsoort,merk,handelsbenaming,type,bruto_bpm,inrichting,aantal_zitplaatsen,massa_ledig_voertuig,massa_rijklaar,catalogusprijs,wam_verzekerd,maximale_constructiesnelheid,aantal_staanplaatsen,aantal_wielen,lengte,breedte,europese_voertuigcategorie,type_gasinstallatie,uitvoering,volgnummer_wijziging_eu_typegoedkeuring,vermogen_massarijklaar,wielbasis,export_indicator,taxi_indicator,datum_tenaamstelling_dt,datum_eerste_toelating_dt,datum_eerste_tenaamstelling_in_nederland_dt,hoogte_voertuig,zuinigheidsclassificatie,maximum_massa_trekken_ongeremd,aanhangwagen_autonoom_geremd,aanhangwagen_middenas_geremd,%20technische_max_massa_voertuig,maximum_massa_samenstelling&$limit=5000000&$where=datum_eerste_toelating>=20230901

# Brandstof data

URL

https://opendata.rdw.nl/resource/8ys7-d773.csv?$select=kenteken,klasse_hybride_elektrisch_voertuig,brandstof_omschrijving,netto_max_vermogen_elektrisch,nettomaximumvermogen,emissie_co2_gecombineerd_wltp,co2_uitstoot_gecombineerd,co2_uitstoot_gewogen,emissiecode_omschrijving,brandstof_volgnummer,brandstofverbruik_gecombineerd,geluidsniveau_rijdend&$limit=15000000

# Gebreken data 

URL

https://opendata.rdw.nl/resource/a34c-vvps.csv?$select=kenteken,gebrek_identificatie,aantal_gebreken_geconstateerd,meld_datum_door_keuringsinstantie_dt&$where=meld_datum_door_keuringsinstantie>=20230901&$limit=50000000

[RDW data quality issues](https://github.com/maximnl/RDW_OPENDATA/blob/main/rdw_fixes.md) 

# Car brands
(brands)[https://github.com/maximnl/RDW_OPENDATA/blob/main/carbrands.md]
