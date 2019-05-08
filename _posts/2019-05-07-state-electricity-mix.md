---
layout: post
title:  Do you know how your state generates electricity&#63;
tags: [ energy, uwLSC432, visualizations ]
featured_image_thumbnail: assets/images/posts/2019/state-electricity/all_states_hex.png
#featured_image: assets/images/posts/2019/state-electricity/all_states_hex.png
custom-javascript-list:
    - "https://code.jquery.com/jquery-3.2.1.min.js"

custom-css-list:
     - "https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"
---

When I press “brew” on my coffeemaker first thing in the morning, I never stop to wonder whether the coffeemaker is on and ready to pour into my mug. For many of us, electricity is just a fact of life. Which energy source created the electrons that power our appliances has little effect on our day-to-day lives, because electrons from coal are the same as electrons from solar. But this blissful ignorance is evolving as climate change seeps further into the national consciousness.

A recent national [study by Yale and George Mason Universities](https://climatecommunication.yale.edu/publications/climate-change-in-the-american-mind-december-2018/) found that 69 percent of Americans identify as “somewhat worried” or “very worried” about global warming. Electricity is among the most visible sources of carbon and other pollutants. This reflects in public sentiment, with more than 4 in 5 Americans agreeing that reducing pollution is a worthwhile goal according to <a href="https://www.consumerreports.org/alternative-energy/majority-of-americans-want-cleaner-energy-from-renewable-sources/">Consumer Reports</a>. More politicians are highlighting climate policies in their campaign, with newly-elected Governors from Maine to Nevada running on clean energy platforms. Regardless of political affiliation, the electric power sector is a hot topic.

Today, electricity is only 38 percent of total final energy consumption. But this number is set to rise as Americans begin to adopt electric vehicles at a faster rate and electrification comes to residential and industrial sectors. Analysis from the <a href="https://www.nrel.gov/news/program/2018/analysis-demand-side-electrification-futures.html">National Renewable Energy Lab</a> (NREL) shows that electricity could grow to up to 41 percent of energy consumption by 2050, up from the 2016 value of 19 percent. Electrification will increase demand for electricity, a marked shift from the trend of flat electricity demand that has characterized the recent past.

The story of electricity varies drastically across the country. While coal generated over 93 percent of West Virginia’s electricity in 2017, it was less than one tenth of one percent of Idaho’s electricity. Despite significant variation in electricity mix, most states around the country still rely on fossil fuels for more than half of their power.

![percent fossil fueled](assets/images/posts/2019/state-electricity/ff.png)
<small>Data from the <a href="https://www.eia.gov/electricity/data.php">U.S. Energy Information Agency</a> (EIA), visualization in <img src="https://www.rstudio.com/wp-content/uploads/2018/10/RStudio-Logo-Flat.png" style="height:1.3em;"></small>

The states that use clean sources for more than half of their electricity fall into two broad camps. States in the Northeast and Pacific Northwest, such as Washington, Idaho, and Vermont have significant hydroelectric resources. The Northeast in particular has access to even more hydroelectric power by importing from nearby Ontario, Canada.

Outside of the geographic north, almost all other states with a high fraction of clean energy rely on nuclear power. States like Illinois, South Carolina, and Connecticut receive about half of their electricity from nuclear plants alone.

![states where a clean source was the largest single source of electricity](assets/images/posts/2019/state-electricity/clean_hex.png)
<small>Data from the <a href="https://www.eia.gov/electricity/data.php">U.S. Energy Information Agency</a> (EIA), visualization in <img src="https://www.rstudio.com/wp-content/uploads/2018/10/RStudio-Logo-Flat.png" style="height:1.3em;"></small>

A few states rely heavily on several sources of clean energy, such as Kansas (wind and nuclear), South Dakota (hydro and wind), and California (hydro, solar, nuclear, wind, and geothermal each provide >5%). These states aren’t exceptions to the rule, as none of these states would produce more than half of their electricity from clean power without either hydroelectric or nuclear power.

Check out your own state below. Is the electricity mix what you expected?

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>

<select onchange="$('#imageToSwap').attr('src', this.options[this.selectedIndex].value);">
    <option value="assets/images/posts/2019/state-electricity/ironed/AL_waffle.png">Alabama</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/AK_waffle.png" selected>Alaska</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/AZ_waffle.png">Arizona</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/AR_waffle.png">Arkansas</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/CA_waffle.png">California</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/CO_waffle.png">Colorado</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/CT_waffle.png">Connecticut</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/DC_waffle.png">DC</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/DE_waffle.png">Delaware</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/FL_waffle.png">Florida</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/GA_waffle.png">Georgia</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/HI_waffle.png">Hawaii</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/ID_waffle.png">Idaho</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/IL_waffle.png">Illinois</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/IN_waffle.png">Indiana</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/IA_waffle.png">Iowa</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/KS_waffle.png">Kansas</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/KY_waffle.png">Kentucky</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/LA_waffle.png">Louisiana</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/ME_waffle.png">Maine</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/MD_waffle.png">Maryland</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/MA_waffle.png">Massachusetts</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/MI_waffle.png">Michigan</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/MN_waffle.png">Minnesota</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/MS_waffle.png">Mississippi</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/MO_waffle.png">Missouri</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/MT_waffle.png">Montana</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/NE_waffle.png">Nebraska</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/NV_waffle.png">Nevada</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/NH_waffle.png">New Hampshire</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/NJ_waffle.png">New Jersey</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/NM_waffle.png">New Mexico</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/NY_waffle.png">New York</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/NC_waffle.png">North Carolina</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/ND_waffle.png">North Dakota</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/OH_waffle.png">Ohio</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/OK_waffle.png">Oklahoma</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/OR_waffle.png">Oregon</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/PA_waffle.png">Pennsylvania</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/RI_waffle.png">Rhode Islands</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/SC_waffle.png">South Carolina</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/SD_waffle.png">South Dakota</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/TN_waffle.png">Tennessee</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/TX_waffle.png">Texas</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/UT_waffle.png">Utah</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/VT_waffle.png">Vermont</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/VA_waffle.png">Virginia</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/WA_waffle.png">Washington</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/WV_waffle.png">West Virgina</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/WI_waffle.png">Wisconsin</option>
    <option value="assets/images/posts/2019/state-electricity/ironed/WY_waffle.png">Wyoming</option>
</select>

<img id="imageToSwap" class="profile" src="https://nuclearkatie.github.io/assets/images/posts/2019/state-electricity/ironed/AK_waffle.png">
<small>Data from the <a href="https://www.eia.gov/electricity/data.php">U.S. Energy Information Agency</a> (EIA), visualization in <img src="https://www.rstudio.com/wp-content/uploads/2018/10/RStudio-Logo-Flat.png" style="height:1.3em;"></small>

Looking at a state's electricity generating mix can be useful, but it’s not completely accurate to assume the energy being consumed is the same as the generation mix, because electricity frequently moves across state lines. According to the [Energy Information Agency](https://www.eia.gov/state/seds/data.php?incfile=/state/seds/sep_sum/html/sum_btu_totcb.html&sid=US) (EIA), California and Virginia are the electricity largest importers.

In 2016, California imported more electricity than it made from in-state from solar, wind, geothermal, and biomass combined. The electricity that California imports from neighbors like Arizona and Oregon is a similar enough mix that after imports, the state’s relative usage of fossil fuels, nuclear, and renewables (as broad categories) stays the same.

Ultimately, it’s difficult to pin down a narrative of electricity generation across the US with each state having such a varied generation mix. The decline of coal is real, but the reports of coal’s death are greatly exaggerated. Coal produced more than half of all electricity in 27 states in 1990 but 12 states in 2017. Even as coal generation has declined, it still produces more than a quarter of all electricity in the U.S.

As coal plants retire, they are typically replaced with a mix of generating capacity. In 2018 solar and wind both added more than 5 gigawatts of capacity, but 60% of the new capacity in the U.S. was natural gas, another fossil fuel.

![](assets/images/posts/2019/state-electricity/additions-retirements.png)
<br><small>Data and image from the <a href="https://www.eia.gov/todayinenergy/detail.php?id=38632">EIA</a></small>

Despite massive drops in the cost of building new renewable capacity, the EIA forecasts no major capacity of wind after 2022. Natural gas additions are also forecasted to match or exceed solar PV all the way through 2050. While coal’s days are numbered, it appears that fossil fuels are still set to play a dominant role in our energy economy for decades to come. If we want to change that, we’ll have to start by recognizing where we are today.
