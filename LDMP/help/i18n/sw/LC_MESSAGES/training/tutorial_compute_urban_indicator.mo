��    B      ,              <  ,   =     j  �   �  u     '   �  /   �  �   �     �      �  �   �  �   q  �   0  �  �  �  p
  >  .  �   m  U   $    z  y   �  �     }   �  �   /     �  -   �    '  �   -  �  �  �   Q  �   �  8   z  d   �  5     "   N  4   q  =   �  R   �  y   7  v   �  y   (  O   �     �     
  �       �    5  �  =    �!  5   �#  K  1$  t   }%  �  �%  �  �'  #  �)  �   �*  �   z+  �   ),  R   -  n  V-  �  �.  m   �1  �   �1  �   u2  8   �2  �   23  o   ,4  �  �4  1   �6  *   �6  �   �6     �7  #   8  3   98  �   m8     �8      9  �   09  �   �9  �   �:  �  D;  �  �<  >  �>  �   �?  U   �@  	  �@  �   �A  �   xB  �   C  �   �C     kD  -   lF    �F  �   �G  �  2H  �   �I  �   FJ  ;   �J  p   9K  =   �K  *   �K  7   L  L   KL  X   �L  y   �L  v   kM  y   �M  C   \N     �N     �N  �   �N    jO    �P  �  �Q    �T  6   �V  K  �V  �   3X  �  �X  �  �Z  #  V\  �   z]  �   =^  �   �^  P   �_  n  (`  �  �a  m   Vd  �   �d  �   Ge  :   �e  �   f  �   �f   **Estimated time of completion**: 40 minutes **Internet access**: Required **Objective**: Learn how to compute urban extent and population for 2000, 2005, 2010, 2015 in raster format and tabular outputs with areas estimated. After clicking OK, the four annual urban extent maps with their corresponding zoning will load into the QGIS project. Area: Define the area for your analysis Black: Built-up areas present since before 2000 Define the area of largest captured open space (ha) which is the contiguous captured open space larger than this area that will be considered rural. Exploring the Urban Mapper Extra: Water frequency parameter For a description on the concepts behind SDG 11.3.1, the data needs and methods used in |trends.earth|, please refer to the background section: :ref:`indicator-11-3-1-background`. If we change the Water Frequency parameter from 25 to 80, we can start seeing the recently built-up areas in the water (ISI = 30, NTL = 10, WFR = 80). But we are still missing some portions. If you are using your own polygon for analysis, we recommend you do not use buffers, since that will affect the area of analysis and the final area calculation. If you selected the buffer option for running the analysis, you may notice that the results do not seem to display a perfectly circular shape. We use planar coordinates to measure distance when computing the buffer, while displaying the results in geographic coordinates. This will cause an apparent distortion the further away your area is from the equator, but there is nothing to worry, the results are correct. In order to improve the Impervious Surface Index and the guidance we provide to users, it would be very useful for us to learn the parameters you selected for your city, and your assessment on how the tool performed by filling this `online form <https://docs.google.com/forms/d/e/1FAIpQLSdLRBzeQ5ZknHJKEtTTzd2VBo2lroPy2RLUSKFpfCyCBRqPKg/viewform>`_ it will not take you more than 30 seconds to fill, and it will help us improve the tool. Thanks! In this area, the data set seems to be missing some constructions, so we can adjust the ISI threshold to a lower value to include areas with lower density of impervious surface into our definition of built-up for Kampala. Let's **change the Impervious Surface Indicator threshold from 30 to 25 and click Run Analysis** In this case, it seems like portions of these newly constructed islands don't have much lights on them. So if we set the NTL threshold to a lower value (e.g. 5) we will capture them. In this case, we will change them to: ISI = 25, NTL = 2, and WFR = 25 and click Next. In this table you'll find the area of the different city land cover classes (urban, suburban, fringe open space, capture open space and water) and the rural areas. You'll also find the population for each of the years analyzed (2000, 2005, 2010, and 2015) and the final SDG 11.3.1. Input: Load an existing .json file if it has not been populated within the dropdown automatically from your QGIS project. Navigate to the `Trends.Earth Urban Mapper <https://geflanddegradation.users.earthengine.app/view/trendsearth-urban-mapper>`_ before you run the analysis in QGIS. Now the map with the built up area defined by the default parameters will load into the map color coded in the following way: Now you should use your knowledge of the city to explore the data set. We can, for example, zoom in to an area in western Kampala to see how the default parameters perform (ISI: 30, NTL: 10, WFR: 25): On July 20th 2019 we launched an updated version of the ISI dataset. We recommend using the most current version. However, if you run any analysis of SDG 11.3.1 in |trends.earth| before that date and would like to replicate them, please use the previous plug in version available `here <https://github.com/ConservationInternational/trends.earth/releases/tag/0.64>`_ and refer to this `website <https://github.com/ConservationInternational/trends.earth#development-version>`_ for instruction on how to install it. On the Advanced tab, you will need to define: On the Area tab you can select a country, region or city from the drop-down lists or upload an area from a file. If you select a city or upload a point location of a city, apply a buffer to the chosen area so that analysis encompasses all potential urban areas. On the Options tab you have to assign a name the task and some notes on how you customized the parameters for your analysis for future reference. On this tutorial we did not explore the effect of the third parameter the `Urban Mapper page <https://geflanddegradation.users.earthengine.app/view/trendsearth-urban-mapper>`_. allow us to change, Water Frequency. This parameter will remain unchanged for most cities, but for those places in which capturing water dynamics is important for understanding how a city is changing, it will be very useful. One of the main feature we'll notice is a set of islands. However, when we click **Run Analysis**, the dataset seems to miss them Options: Enter a task name and notes for the analysis. This final step is calculated locally on your computer, it will load automatically in your QGIS project window. Orange: Built-up areas constructed between 2005 and 2010 Output: Select browse to navigate to a file on your computer and save the json file and excel table. Red: Built-up areas constructed between 2000 and 2005 SDG 11.3.1 - Land Consumption Rate Select Step 1: Calculate urban change spatial layers Select Step 2: Calculate urban change summary table for city. Select the Calculate icon (|iconCalculator|) from the Trends.Earth plugin in QGIS. Select the Impervious Surface Index (ISI) by choosing a value between 0-100. Lower values will include low density areas. Select the Night Time Lights Index (NTL) by choosing a value between 0-100. Lower values will include low light areas. Select the Water Frequency (WFR) by choosing a value between 0-100. Lower values will include low frequency water bodies. Select which population density dataset you would like to use for the analysis. Step 1: Built-up series Step 2: Urban change The **Calculate Indicators** menu will open. In that window, click on **Urban change and land consumption indicators (SDG indicator 11.3.1)** button. The **Calculate Urban Area Change Metrics** menu will open. In that window, you will step through the four tabs to set the parameters for your analysis. In the settings tab you will input the parameters you have determined as most appropriate for the city by exploring the `Trends.Earth Urban Mapper <https://geflanddegradation.users.earthengine.app/view/trendsearth-urban-mapper>`_. The analysis for cities takes approximately 30 min to run, depending on the size of the area and the servers usage. To check the status of the task you can click on the Download button on the |trends.earth| tool-bar. When the windows open, click **Refresh list**. The first step before analyzing urban change is to define the extent of built up areas. For that, we have created an interactive web interface called `Trends.Earth Urban Mapper <https://geflanddegradation.users.earthengine.app/view/trendsearth-urban-mapper>`_. This step is fundamental to make sure that the built up area identified by the indicators accurately reflects the conditions in your area of study. The `Trends.Earth Urban Mapper <https://geflanddegradation.users.earthengine.app/view/trendsearth-urban-mapper>`_ allows users to explore how changing different parameters impact the extent of the built up area data which will be then used to define changes in urban extent. The provided boundaries are from `Natural Earth <http://www.naturalearthdata.com>`_, and are in the `public domain <https://creativecommons.org/publicdomain>`_. The boundaries and names  used, and the designations used, in Trends.Earth do not imply official endorsement or acceptance by Conservation International Foundation, or by its partner organizations and contributors. If using Trends.Earth for official purposes, it is recommended that users choose an official boundary provided by the designated office of their country. The thresholds for suburban and urban built up areas. The water Frequency parameter should be interpreted as follows: A pixel needs to be covered by water for at least X percent of the time for it to be considered water, otherwise it will be considered land". This means that the higher the value, the less water the map will show and the more land (i.e. built up if that is the case). Then click "Save". The layer will be saved on your computer and automatically loaded into your current QGIS project. This seems to have increased the built-up area in the direction we wanted, but we can now see some straight discontinuity lines in the outskirts of the city after which there is no information. This is a sign that the Night Time Lights threshold is being too restrictive. If we set the parameter to a lower value, we will allow the analysis to include areas with low night time light density. **Change the Night Time Light threshold from 10 to 2 and click Run Analysis.** This tool allows you to change three parameters in order to correctly identify the most appropriate built up extent for your city: **Impervious surface index, night time lights index, and water frequency**. The first time you run the tool in a new city, click **Run analysis** to see how the default parameters perform, and from there you can customize the analysis. You can use the high spatial resolution images in the background to evaluate the product. This tool can be used to analyze changes in built up area in almost any city of the world. Click on the **Search Places** window in the top center of the page and type the city you want to analyze. For this tutorial, type **Kampala, Uganda** and click on the option showing right underneath. To download the results, click on the task and select "Download results" at the bottom of the window. A pop up window will open for you to select where to save the layer and to assign it a name. To explore one of such cases, navigate to the `Urban Mapper page <https://geflanddegradation.users.earthengine.app/view/trendsearth-urban-mapper>`_ and let's go to **Dubai**. To explore the summary table, navigate to the folder in your computer where you saved the excel file and double click on it to open. If an error window appears, select the **Yes** and the summary will proceed to open. View results: A window will appear when the processing is complete. Select **OK**. We can now see that the built up area information extends too all the area we were exploring. We can run the analysis as many times as we need. Each time we click **Run Analysis** a new layer will be added to the map. You can turns the different layers on and off or change the transparency of each of them in the **Layers Menu** on the top right section of the map. We recommend you spend some time exploring the effect of the different values in each parameter for your city, since your results will greatly depend on them. Make sure to navigate to different parts of the city to make sure the parameters work well in areas the high density areas close to downtown and also in moderate and low density areas. You can find below the spatial distribution of threshold parameters selected for the sample of 224 cities tested which may serve you as a guide for identifying which values may be most relevant for your city of interest. Once you feel like you have identified the best values for the city you want to analyze, you are ready to go to QGIS to run the analysis. We'll use the default options for now, but you can change them to fit the needs of your analysis. Click Next. When all the parameters have been defined, click "Calculate", and the task will be submitted to Google Earth Engine for computing. When the Google Earth Engine task has completed and you received the email, click "Refresh List" and the status will show FINISHED. Yellow: Built-up areas constructed between 2010 and 2015 You have now downloaded the detaset to your local computer, but we still need to estimate the change over time in order to compute the SDG indicator 11.3.1. For that, select the Calculate icon (|iconCalculator|) from the Trends.Earth plugin in QGIS. `Download this page as a PDF for offline use <../pdfs/Trends.Earth_Tutorial11_Urban_Change_SDG_Indicator.pdf>`_ Project-Id-Version: Trends.Earth 0.66
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-07-19 16:44-0400
PO-Revision-Date: 2019-01-28 02:15+0000
Last-Translator: Mariano Gonzalez-Roglich <mgonzalez-roglich@conservation.org>, 2019
Language: sw
Language-Team: Swahili (https://www.transifex.com/conservation-international/teams/80165/sw/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.3
 ** Muda uliotarajiwa wa kukamilisha **: dakika 40 ** Upatikanaji wa Intaneti **: Inahitajika ** Lengo **: Jifunze jinsi ya kuhesabu kiwango cha mijini na idadi ya watu kwa 2000, 2005, 2010, 2015, katika muundo wa raster na matokeo ya tabular na maeneo yaliyotarajiwa. Baada ya kubofya Sawa, ramani za miji nne za kila mwaka za eneo la mijini na ugawaji wao sawa zitaingizwa kwenye mradi wa QGIS. Eneo: Eleza eneo kwa uchambuzi wako Nyeusi: Sehemu zilizojengwa zipo sasa kabla ya 2000 Eleza eneo la nafasi kubwa iliyofunguliwa (ha) ambayo inajenga nafasi iliyo wazi zaidi kuliko eneo hili ambalo litazingatiwa vijijini. Exploring the Urban Mapper Extra: Water frequency parameter For a description on the concepts behind SDG 11.3.1, the data needs and methods used in |trends.earth|, please refer to the background section: :ref:`indicator-11-3-1-background`. If we change the Water Frequency parameter from 25 to 80, we can start seeing the recently built-up areas in the water (ISI = 30, NTL = 10, WFR = 80). But we are still missing some portions. If you are using your own polygon for analysis, we recommend you do not use buffers, since that will affect the area of analysis and the final area calculation. If you selected the buffer option for running the analysis, you may notice that the results do not seem to display a perfectly circular shape. We use planar coordinates to measure distance when computing the buffer, while displaying the results in geographic coordinates. This will cause an apparent distortion the further away your area is from the equator, but there is nothing to worry, the results are correct. In order to improve the Impervious Surface Index and the guidance we provide to users, it would be very useful for us to learn the parameters you selected for your city, and your assessment on how the tool performed by filling this `online form <https://docs.google.com/forms/d/e/1FAIpQLSdLRBzeQ5ZknHJKEtTTzd2VBo2lroPy2RLUSKFpfCyCBRqPKg/viewform>`_ it will not take you more than 30 seconds to fill, and it will help us improve the tool. Thanks! In this area, the data set seems to be missing some constructions, so we can adjust the ISI threshold to a lower value to include areas with lower density of impervious surface into our definition of built-up for Kampala. Let's **change the Impervious Surface Indicator threshold from 30 to 25 and click Run Analysis** In this case, it seems like portions of these newly constructed islands don't have much lights on them. So if we set the NTL threshold to a lower value (e.g. 5) we will capture them. In this case, we will change them to: ISI = 25, NTL = 2, and WFR = 25 and click Next. Katika meza hii utapata eneo la madarasa tofauti ya jiji la ardhi (mijini, mijini, nafasi ya wazi, kukamata nafasi na maji) na maeneo ya vijijini. Utapata pia idadi ya watu kwa kila mmoja wa miaka iliyochambuliwa (2000, 2005, 2010, na 2015) na SDG ya mwisho 11.3.1. Input: Weka faili iliyopo ya .json kama haijawahi kuwa na watu ndani ya kushuka kwa moja kwa moja kutoka kwa mradi wako wa QGIS. Navigate to the `Trends.Earth Urban Mapper <https://geflanddegradation.users.earthengine.app/view/trendsearth-urban-mapper>`_ before you run the analysis in QGIS. Sasa ramani na eneo lililojengwa linalotafsiriwa na vigezo vya msingi hupakia kwenye rangi ya ramani iliyochukuliwa kwa njia ifuatayo: Now you should use your knowledge of the city to explore the data set. We can, for example, zoom in to an area in western Kampala to see how the default parameters perform (ISI: 30, NTL: 10, WFR: 25): On July 20th 2019 we launched an updated version of the ISI dataset. We recommend using the most current version. However, if you run any analysis of SDG 11.3.1 in |trends.earth| before that date and would like to replicate them, please use the previous plug in version available `here <https://github.com/ConservationInternational/trends.earth/releases/tag/0.64>`_ and refer to this `website <https://github.com/ConservationInternational/trends.earth#development-version>`_ for instruction on how to install it. On the Advanced tab, you will need to define: On the Area tab you can select a country, region or city from the drop-down lists or upload an area from a file. If you select a city or upload a point location of a city, apply a buffer to the chosen area so that analysis encompasses all potential urban areas. On the Options tab you have to assign a name the task and some notes on how you customized the parameters for your analysis for future reference. On this tutorial we did not explore the effect of the third parameter the `Urban Mapper page <https://geflanddegradation.users.earthengine.app/view/trendsearth-urban-mapper>`_. allow us to change, Water Frequency. This parameter will remain unchanged for most cities, but for those places in which capturing water dynamics is important for understanding how a city is changing, it will be very useful. One of the main feature we'll notice is a set of islands. However, when we click **Run Analysis**, the dataset seems to miss them Chaguzi: Ingiza jina la kazi na maelezo kwa uchambuzi. Hatua hii ya mwisho imehesabiwa ndani ya kompyuta kwenye kompyuta yako, itapakia moja kwa moja kwenye dirisha la mradi wa QGIS. Orange: Maeneo yanayojengwa yalijengwa kati ya 2005 na 2010 Pato: Chagua kuvinjari ili uende kwenye faili kwenye kompyuta yako na uhifadhi faili la json na meza bora zaidi. Nyekundu: Sehemu zilizojengwa zilijengwa kati ya 2000 na 2005 SDG 11.3.1 - Kiwango cha matumizi ya ardhi Chagua Hatua ya 1: Fanya tabaka za mabadiliko ya mijini Chagua Hatua ya 2: Fanya meza ya muhtasari wa mabadiliko ya mijini kwa jiji. Chagua icon ya kuhesabu (| iconCalculator |) kutoka kwa Trends.Earth Plugin katika QGIS. Select the Impervious Surface Index (ISI) by choosing a value between 0-100. Lower values will include low density areas. Select the Night Time Lights Index (NTL) by choosing a value between 0-100. Lower values will include low light areas. Select the Water Frequency (WFR) by choosing a value between 0-100. Lower values will include low frequency water bodies. Chagua darasetani ya idadi ya watu ungependa kutumia kwa uchambuzi. Step 1: Built-up series Step 2: Urban change Mfumo wa Mahesabu ** ** utafunguliwa. Katika dirisha hilo, bonyeza ** Mabadiliko ya mijini na viashiria vya matumizi ya ardhi (kiashiria cha SDG 11.3.1) **. The **Calculate Urban Area Change Metrics** menu will open. In that window, you will step through the four tabs to set the parameters for your analysis. In the settings tab you will input the parameters you have determined as most appropriate for the city by exploring the `Trends.Earth Urban Mapper <https://geflanddegradation.users.earthengine.app/view/trendsearth-urban-mapper>`_. The analysis for cities takes approximately 30 min to run, depending on the size of the area and the servers usage. To check the status of the task you can click on the Download button on the |trends.earth| tool-bar. When the windows open, click **Refresh list**. The first step before analyzing urban change is to define the extent of built up areas. For that, we have created an interactive web interface called `Trends.Earth Urban Mapper <https://geflanddegradation.users.earthengine.app/view/trendsearth-urban-mapper>`_. This step is fundamental to make sure that the built up area identified by the indicators accurately reflects the conditions in your area of study. The `Trends.Earth Urban Mapper <https://geflanddegradation.users.earthengine.app/view/trendsearth-urban-mapper>`_ allows users to explore how changing different parameters impact the extent of the built up area data which will be then used to define changes in urban extent. The provided boundaries are from `Natural Earth <http://www.naturalearthdata.com>`_, and are in the `public domain <https://creativecommons.org/publicdomain>`_. The boundaries and names  used, and the designations used, in Trends.Earth do not imply official endorsement or acceptance by Conservation International Foundation, or by its partner organizations and contributors. If using Trends.Earth for official purposes, it is recommended that users choose an official boundary provided by the designated office of their country. Vizingiti kwa maeneo ya mijini na mijini yaliyojengwa. The water Frequency parameter should be interpreted as follows: A pixel needs to be covered by water for at least X percent of the time for it to be considered water, otherwise it will be considered land". This means that the higher the value, the less water the map will show and the more land (i.e. built up if that is the case). Kisha bofya &quot;Weka&quot;. Safu itahifadhiwa kwenye kompyuta yako na imewekwa moja kwa moja kwenye mradi wako wa sasa wa QGIS. This seems to have increased the built-up area in the direction we wanted, but we can now see some straight discontinuity lines in the outskirts of the city after which there is no information. This is a sign that the Night Time Lights threshold is being too restrictive. If we set the parameter to a lower value, we will allow the analysis to include areas with low night time light density. **Change the Night Time Light threshold from 10 to 2 and click Run Analysis.** This tool allows you to change three parameters in order to correctly identify the most appropriate built up extent for your city: **Impervious surface index, night time lights index, and water frequency**. The first time you run the tool in a new city, click **Run analysis** to see how the default parameters perform, and from there you can customize the analysis. You can use the high spatial resolution images in the background to evaluate the product. This tool can be used to analyze changes in built up area in almost any city of the world. Click on the **Search Places** window in the top center of the page and type the city you want to analyze. For this tutorial, type **Kampala, Uganda** and click on the option showing right underneath. To download the results, click on the task and select "Download results" at the bottom of the window. A pop up window will open for you to select where to save the layer and to assign it a name. To explore one of such cases, navigate to the `Urban Mapper page <https://geflanddegradation.users.earthengine.app/view/trendsearth-urban-mapper>`_ and let's go to **Dubai**. Ili kuchunguza meza ya muhtasari, nenda kwenye folda kwenye kompyuta yako ambako ulihifadhi faili bora na bonyeza mara mbili juu yake kufungua. Ikiwa dirisha la hitilafu linaonekana, chagua ** Ndio ** na muhtasari utaendelea kufungua. Tazama matokeo: dirisha itaonekana wakati usindikaji ukamilika. Chagua ** OK **. We can now see that the built up area information extends too all the area we were exploring. We can run the analysis as many times as we need. Each time we click **Run Analysis** a new layer will be added to the map. You can turns the different layers on and off or change the transparency of each of them in the **Layers Menu** on the top right section of the map. We recommend you spend some time exploring the effect of the different values in each parameter for your city, since your results will greatly depend on them. Make sure to navigate to different parts of the city to make sure the parameters work well in areas the high density areas close to downtown and also in moderate and low density areas. You can find below the spatial distribution of threshold parameters selected for the sample of 224 cities tested which may serve you as a guide for identifying which values may be most relevant for your city of interest. Once you feel like you have identified the best values for the city you want to analyze, you are ready to go to QGIS to run the analysis. We'll use the default options for now, but you can change them to fit the needs of your analysis. Click Next. When all the parameters have been defined, click "Calculate", and the task will be submitted to Google Earth Engine for computing. Wakati kazi ya Google Earth Engine imekamilika na upokea barua pepe, bofya &quot;Rejesha Orodha&quot; na hali itaonyesha FINISHED. Njano: Sehemu zilizojengwa zilijengwa kati ya 2010 na 2015 You have now downloaded the detaset to your local computer, but we still need to estimate the change over time in order to compute the SDG indicator 11.3.1. For that, select the Calculate icon (|iconCalculator|) from the Trends.Earth plugin in QGIS. `Pakua ukurasa huu kama PDF kwa matumizi ya nje ya mtandao &lt;../ pdfs / Trends.Earth_Tutorial11_Urban_Change_SDG_Indicator.pdf&gt;` _ 