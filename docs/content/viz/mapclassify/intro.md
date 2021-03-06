mapclassify: Classification Schemes for Choropleth Maps
=======================================================

[![Build Status](https://travis-ci.org/pysal/mapclassify.svg?branch=master)](https://travis-ci.org/pysal/mapclassify)
[![PyPI version](https://badge.fury.io/py/mapclassify.svg)](https://badge.fury.io/py/mapclassify)
[![DOI](https://zenodo.org/badge/88918063.svg)](https://zenodo.org/badge/latestdoi/88918063)
[![Documentation Status](https://readthedocs.org/projects/mapclassify/badge/?version=latest)](https://mapclassify.readthedocs.io/en/latest/?badge=latest)



```python
>>> import mapclassify
>>> y = mapclassify.load_example()
>>> y.mean()
125.92810344827588
>>> y.min(), y.max()
(0.13, 4111.4499999999998)

```

## Map Classifiers Supported

### BoxPlot

```python
>>> mapclassify.BoxPlot(y)

                  Box Plot

 Lower              Upper              Count
============================================
           x[i] <=  -52.876                0
 -52.876 < x[i] <=    2.567               15
   2.567 < x[i] <=    9.365               14
   9.365 < x[i] <=   39.530               14
  39.530 < x[i] <=   94.974                6
  94.974 < x[i] <= 4111.450                9

```


### EqualInterval

```python
>>> mapclassify.EqualInterval(y)

               Equal Interval

 Lower              Upper              Count
============================================
           x[i] <=  822.394               57
 822.394 < x[i] <= 1644.658                0
1644.658 < x[i] <= 2466.922                0
2466.922 < x[i] <= 3289.186                0
3289.186 < x[i] <= 4111.450                1
```

### FisherJenks

```python
>>> import numpy as np
>>> np.random.seed(123456)
>>> mapclassify.FisherJenks(y, k=5)

                Fisher_Jenks

 Lower              Upper              Count
============================================
           x[i] <=   75.290               49
  75.290 < x[i] <=  192.050                3
 192.050 < x[i] <=  370.500                4
 370.500 < x[i] <=  722.850                1
 722.850 < x[i] <= 4111.450                1

```

### FisherJenksSampled

```python
>>> np.random.seed(123456)
>>> x = np.random.exponential(size=(10000,))
>>> mapclassify.FisherJenks(x, k=5)

               Fisher_Jenks

Lower            Upper               Count
==========================================
         x[i] <=  0.639               4694
 0.639 < x[i] <=  1.447               2922
 1.447 < x[i] <=  2.528               1584
 2.528 < x[i] <=  4.141                636
 4.141 < x[i] <= 10.608                164

>>> mapclassify.FisherJenksSampled(x, k=5)

           Fisher_Jenks_Sampled

Lower            Upper               Count
==========================================
         x[i] <=  0.698               5020
 0.698 < x[i] <=  1.626               2952
 1.626 < x[i] <=  2.884               1454
 2.884 < x[i] <=  5.319                522
 5.319 < x[i] <= 10.608                 52

```

### HeadTailBreaks

```python
>>> mapclassify.HeadTailBreaks(y)

              HeadTailBreaks

 Lower              Upper              Count
============================================
           x[i] <=  125.928               50
 125.928 < x[i] <=  811.260                7
 811.260 < x[i] <= 4111.450                1

```

### JenksCaspall

```python
>>> mapclassify.JenksCaspall(y, k=5)

               JenksCaspall

 Lower              Upper              Count
============================================
           x[i] <=    1.810               14
   1.810 < x[i] <=    7.600               13
   7.600 < x[i] <=   29.820               14
  29.820 < x[i] <=  181.270               10
 181.270 < x[i] <= 4111.450                7
```

### JenksCaspallForced

```python
>>> mapclassify.JenksCaspallForced(y, k=5)

            JenksCaspallForced

 Lower              Upper              Count
============================================
           x[i] <=    1.340               12
   1.340 < x[i] <=    5.900               12
   5.900 < x[i] <=   16.700               13
  16.700 < x[i] <=   50.650                9
  50.650 < x[i] <= 4111.450               12
```

### JenksCaspallSampled

```python
>>> mapclassify.JenksCaspallSampled(y, k=5)

           JenksCaspallSampled

 Lower              Upper              Count
============================================
           x[i] <=    0.220                4
   0.220 < x[i] <=    4.510               18
   4.510 < x[i] <=   66.260               26
  66.260 < x[i] <=  181.270                3
 181.270 < x[i] <= 4111.450                7
```

### MaxP

```python
>>> mapclassify.MaxP(y)

                   MaxP

 Lower              Upper              Count
============================================
           x[i] <=    8.700               29
   8.700 < x[i] <=   16.700                8
  16.700 < x[i] <=   20.470                1
  20.470 < x[i] <=  110.740               12
 110.740 < x[i] <= 4111.450                8
```

### [MaximumBreaks](notebooks/maximum_breaks.ipynb)

```python
>>> mapclassify.MaximumBreaks(y, k=5)

               MaximumBreaks

 Lower              Upper              Count
============================================
           x[i] <=  146.005               50
 146.005 < x[i] <=  228.490                2
 228.490 < x[i] <=  546.675                4
 546.675 < x[i] <= 2417.150                1
2417.150 < x[i] <= 4111.450                1

```

### NaturalBreaks

```python
>>> mapclassify.NaturalBreaks(y, k=5)

               NaturalBreaks

 Lower              Upper              Count
============================================
           x[i] <=   75.290               49
  75.290 < x[i] <=  192.050                3
 192.050 < x[i] <=  370.500                4
 370.500 < x[i] <=  722.850                1
 722.850 < x[i] <= 4111.450                1

```

### Quantiles

```python
>>> mapclassify.Quantiles(y, k=5)

                 Quantiles

 Lower              Upper              Count
============================================
           x[i] <=    1.464               12
   1.464 < x[i] <=    5.798               11
   5.798 < x[i] <=   13.278               12
  13.278 < x[i] <=   54.616               11
  54.616 < x[i] <= 4111.450               12

```

### Percentiles

```python
>>> mapclassify.Percentiles(y, pct=[33, 66, 100])

                Percentiles

 Lower              Upper              Count
============================================
           x[i] <=    3.359               19
   3.359 < x[i] <=   22.857               19
  22.857 < x[i] <= 4111.450               20

```

### StdMean

```python
>>> mapclassify.StdMean(y)

                  StdMean

 Lower              Upper              Count
============================================
           x[i] <= -967.362                0
-967.362 < x[i] <= -420.717                0
-420.717 < x[i] <=  672.573               56
 672.573 < x[i] <= 1219.219                1
1219.219 < x[i] <= 4111.450                1

```
### UserDefined

```python
>>> mapclassify.UserDefined(y, bins=[22, 674, 4112])

                UserDefined

 Lower              Upper              Count
============================================
           x[i] <=   22.000               38
  22.000 < x[i] <=  674.000               18
 674.000 < x[i] <= 4112.000                2

```

## Use Cases

### Creating and using a classification instance

```python
>>> bp = mapclassify.BoxPlot(y)
>>> bp

                  BoxPlot

 Lower              Upper              Count
============================================
           x[i] <=  -52.876                0
 -52.876 < x[i] <=    2.567               15
   2.567 < x[i] <=    9.365               14
   9.365 < x[i] <=   39.530               14
  39.530 < x[i] <=   94.974                6
  94.974 < x[i] <= 4111.450                9
>>> bp.bins
array([ -5.28762500e+01,   2.56750000e+00,   9.36500000e+00,
         3.95300000e+01,   9.49737500e+01,   4.11145000e+03])
>>> bp.counts
array([ 0, 15, 14, 14,  6,  9])
>>> bp.yb
array([5, 1, 2, 3, 2, 1, 5, 1, 3, 3, 1, 2, 2, 1, 2, 2, 2, 1, 5, 2, 4, 1, 2,
       2, 1, 1, 3, 3, 3, 5, 3, 1, 3, 5, 2, 3, 5, 5, 4, 3, 5, 3, 5, 4, 2, 1,
       1, 4, 4, 3, 3, 1, 1, 2, 1, 4, 3, 2])

```

### Apply

```python
>>> import mapclassify 
>>> import pandas
>>> from numpy import linspace as lsp
>>> data = [lsp(3,8,num=10), lsp(10, 0, num=10), lsp(-5, 15, num=10)]
>>> data = pandas.DataFrame(data).T
>>> data
          0          1          2
0  3.000000  10.000000  -5.000000
1  3.555556   8.888889  -2.777778
2  4.111111   7.777778  -0.555556
3  4.666667   6.666667   1.666667
4  5.222222   5.555556   3.888889
5  5.777778   4.444444   6.111111
6  6.333333   3.333333   8.333333
7  6.888889   2.222222  10.555556
8  7.444444   1.111111  12.777778
9  8.000000   0.000000  15.000000
>>> data.apply(mapclassify.Quantiles.make(rolling=True))
   0  1  2
0  0  4  0
1  0  4  0
2  1  4  0
3  1  3  0
4  2  2  1
5  2  1  2
6  3  0  4
7  3  0  4
8  4  0  4
9  4  0  4

```
