---
title: Data Screening
description: Screening and filtering data from the IGN catalog down to the relevant events for La Palma
authors:
  - name: Steve Purves
    orcid: 0000-0002-0760-5497
  - name: Charlotte Wickham
    note: Edited original notebook by Steve Purves
jupyter: python3
---


::: {#25276572 .cell execution_count=1}
``` {}
import pandas as pd
import matplotlib.pyplot as plt
```
:::


:::{#7f05db89 .cell .markdown}
Import `la-palma.csv` - a clean subset of [`catalogoComunSV_1663233588717.csv`](https://github.com/Notebooks-Now/submission-quarto-full/blob/main/data/catalogoComunSV_1663233588717.csv):
:::

::: {#da2659e5 .cell execution_count=2}
``` {}
df = pd.read_csv('la-palma.csv')
df['DateTime'] = pd.to_datetime(df['DateTime'])
df = df.sort_values(by=['DateTime'], ascending=True)
df.head()
```

::: {.cell-output .cell-output-display execution_count=37}

```{=html}
<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Longitude</th>
      <th>Latitude</th>
      <th>Depth(km)</th>
      <th>Magnitude</th>
      <th>DateTime</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>11346</th>
      <td>-17.8349</td>
      <td>28.5346</td>
      <td>26.0</td>
      <td>1.6</td>
      <td>2017-03-09 23:44:06+00:00</td>
    </tr>
    <tr>
      <th>11343</th>
      <td>-17.8459</td>
      <td>28.5491</td>
      <td>27.0</td>
      <td>2.0</td>
      <td>2017-03-10 00:16:10+00:00</td>
    </tr>
    <tr>
      <th>11344</th>
      <td>-17.8863</td>
      <td>28.5008</td>
      <td>20.0</td>
      <td>2.1</td>
      <td>2017-03-10 00:16:11+00:00</td>
    </tr>
    <tr>
      <th>11345</th>
      <td>-17.8657</td>
      <td>28.5204</td>
      <td>30.0</td>
      <td>1.6</td>
      <td>2017-03-10 03:20:26+00:00</td>
    </tr>
    <tr>
      <th>11342</th>
      <td>-17.7156</td>
      <td>28.5985</td>
      <td>0.0</td>
      <td>1.6</td>
      <td>2017-08-21 02:06:55+00:00</td>
    </tr>
  </tbody>
</table>
</div>
```

:::
:::


::: {#ae1253df .cell execution_count=3}
``` {}
df.describe()
```

::: {.cell-output .cell-output-display execution_count=38}

```{=html}
<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Longitude</th>
      <th>Latitude</th>
      <th>Depth(km)</th>
      <th>Magnitude</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>count</th>
      <td>11347.000000</td>
      <td>11347.000000</td>
      <td>11347.000000</td>
      <td>11347.000000</td>
    </tr>
    <tr>
      <th>mean</th>
      <td>-17.844062</td>
      <td>28.568893</td>
      <td>14.089345</td>
      <td>2.432423</td>
    </tr>
    <tr>
      <th>std</th>
      <td>0.027345</td>
      <td>0.021899</td>
      <td>8.624787</td>
      <td>0.705282</td>
    </tr>
    <tr>
      <th>min</th>
      <td>-17.995800</td>
      <td>28.310200</td>
      <td>0.000000</td>
      <td>0.200000</td>
    </tr>
    <tr>
      <th>25%</th>
      <td>-17.854100</td>
      <td>28.558000</td>
      <td>10.100000</td>
      <td>1.900000</td>
    </tr>
    <tr>
      <th>50%</th>
      <td>-17.838700</td>
      <td>28.564000</td>
      <td>11.300000</td>
      <td>2.600000</td>
    </tr>
    <tr>
      <th>75%</th>
      <td>-17.829700</td>
      <td>28.574300</td>
      <td>13.900000</td>
      <td>2.900000</td>
    </tr>
    <tr>
      <th>max</th>
      <td>-17.705700</td>
      <td>28.697800</td>
      <td>46.900000</td>
      <td>5.100000</td>
    </tr>
  </tbody>
</table>
</div>
```

:::
:::


::: {#81b4dfb2 .cell execution_count=4}
``` {}
df.plot.scatter(x="Longitude", y="Latitude", figsize=(12,12), grid="on");
```

::: {.cell-output .cell-output-display}
![](data-screening_files/figure-jats/cell-5-output-1.png){}
:::
:::


:::{#19a1ba0d .cell .markdown}
### Filter 

Also some rows seem to be missing depth measurements, (see differences in the **count** for columns above) - take only rows with valid depths
:::

::: {#e56a69b3 .cell execution_count=5}
``` {}
df = df[df['Depth(km)'].notna()]
df.describe()
```

::: {.cell-output .cell-output-display execution_count=40}

```{=html}
<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Longitude</th>
      <th>Latitude</th>
      <th>Depth(km)</th>
      <th>Magnitude</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>count</th>
      <td>11347.000000</td>
      <td>11347.000000</td>
      <td>11347.000000</td>
      <td>11347.000000</td>
    </tr>
    <tr>
      <th>mean</th>
      <td>-17.844062</td>
      <td>28.568893</td>
      <td>14.089345</td>
      <td>2.432423</td>
    </tr>
    <tr>
      <th>std</th>
      <td>0.027345</td>
      <td>0.021899</td>
      <td>8.624787</td>
      <td>0.705282</td>
    </tr>
    <tr>
      <th>min</th>
      <td>-17.995800</td>
      <td>28.310200</td>
      <td>0.000000</td>
      <td>0.200000</td>
    </tr>
    <tr>
      <th>25%</th>
      <td>-17.854100</td>
      <td>28.558000</td>
      <td>10.100000</td>
      <td>1.900000</td>
    </tr>
    <tr>
      <th>50%</th>
      <td>-17.838700</td>
      <td>28.564000</td>
      <td>11.300000</td>
      <td>2.600000</td>
    </tr>
    <tr>
      <th>75%</th>
      <td>-17.829700</td>
      <td>28.574300</td>
      <td>13.900000</td>
      <td>2.900000</td>
    </tr>
    <tr>
      <th>max</th>
      <td>-17.705700</td>
      <td>28.697800</td>
      <td>46.900000</td>
      <td>5.100000</td>
    </tr>
  </tbody>
</table>
</div>
```

:::
:::


::: {#1368822d .cell execution_count=6}
``` {}
plt.figure(figsize=(20,6))
plt.subplot(1,3,1)
df["Latitude"].plot.hist(bins=20, density=True)
plt.subplot(1,3,2)
df["Longitude"].plot.hist(bins=20, density=True)
plt.subplot(1,3,3)
df["Depth(km)"].plot.hist(bins=50, density=True)
```

::: {.cell-output .cell-output-display}
![](data-screening_files/figure-jats/cell-7-output-1.png){}
:::
:::


:::{#da7ad095 .cell .markdown}
## Spatial Plot

Scatter plot the spatial locations of events
:::

::: {#cell-fig-spatial-plot .cell execution_count=7}
``` {}
#| label: fig-spatial-plot
#| fig-cap: Locations of earthquakes on La Palma since 2017.
#| fig-alt: A scatterplot of earthquake locations plotting latitude against longitude.
from matplotlib import colormaps
cmap = colormaps['viridis_r']
ax = df.plot.scatter(x="Longitude", y="Latitude", 
                     s=47-df["Depth(km)"], c=df["Magnitude"], 
                     figsize=(12,10), grid="on", cmap=cmap)
colorbar = ax.collections[0].colorbar
colorbar.set_label("Magnitude")

plt.show()
```

::: {.cell-output .cell-output-display}
![Locations of earthquakes on La Palma since 2017.](data-screening_files/figure-jats/fig-spatial-plot-output-1.png){#fig-spatial-plot fig-alt='A scatterplot of earthquake locations plotting latitude against longitude.'}
:::
:::


:::{#22ac5ce7 .cell .markdown}
### Timeline Plot

Scatter plot the event time series and look for any quantization issues. Have times & dates been loaded correctly?


ax = df.plot.scatter(x='DateTime', y='Depth(km)', figsize=(20,8))
ax.set_ylim(50,0);
:::

