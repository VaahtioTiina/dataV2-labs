### Reading about Statistics 

#### Challenge 1 - What is the difference between expected value and mean? 

Expected value is an average based on a number of observations and probability that an outcome happens. 
Mean again is the sum of outcomes divided by the count. 

If the number of observations is low, it is likely that there is a difference in the mean and expected value.
However, when the number of observations increases the mean typically becomes similar to the expected value. 

#### Challenge 2 - What is the "problem" in science with p-values? 

P-value is used to determine the statistical significance of a finding. Typically there is a treshold value such as 0.05, that signifies
whether the results are statistically significant or not.

No significance does not necessarily mean there is no effect. It can be misleading to use p-value as categorical attribute. This is mostly
due to the fact that p-value can vary quite significantly between different studies and can vary even in exact replicated studies.

Moreover, often decision making should be based on many different attributes (cost, benefits , likelihood etc) and not just statistical significance. 

With final note, p-values should not be disregarded, but their direct categorical interpretation should be changed.
The p-values still provide important information, but we can report them together with our assumptions to support
the evaluation of hypothesis. 

#### Challenge 3 - A/B Testing 

##### A/B Testing Sephora new changes in the e-commerce site 

Source: https://towardsdatascience.com/the-art-of-a-b-testing-5a10c9bb70a4

- It is important to test your new features as it is impossible to guess/estimate such changes on assumptions
- The analysis can be start from a simple A/B test -> But further statistical analysis are needed in order to validate our results
- Extra attention needs to be also placed to avoid bias in the test (for example sepcial holidays, situations etc) 

###### First phase: 
- You have a landing page design and we need to test the performance of the site
- Metrics that matter: Converstion rate, Avg time spent
- Design the split groups (it does not have to be 50/50, but consider that different splits may take longer to yield statistical significance results 
- In this case Sephora went from 60/40 split and has enough results after 7 days 
- IMPORTANT: It's not typically appropriate to draw conclusion from a raw result. (B has cr of 2% while A 1.5%, B avg time 45 s and A avg time 40s)
- QUOTATATION: """"For example: In this test Because version B exhibits higher CR, does it mean version B brings improvement? Similarly, can we conclude on the influence on the average time spent?
If so, with what level of confidence?
Did a higher CR/lower average time spent of version B happen by chance?""" 

Hence, we need to statistically model the results -> 

###### Second Phase: 
- Based on raw results we can test hypothesis, which basically is form to compare the distributions of 2 populations, based on samples from them 
- First step: Formulate Hypothesis  Ho : The meands of the groups are similar, H1 the means in B as higher
- We will now focus only on conversion rates, and take a look at X2 test and see if we can "prove" that B results in to better conversion rates 

###### X2 test:  

The hypothesis to test are:
H₀: “the conversion rate is the same for the two versions”
H₁: “the conversion rate is higher for version B” 

- First we divide the results to binary outcome of either converted or not converted 
- After this we can start modeling the hypothesis0 

"""  D represents a squared relative distance between the theoretical and the observed distributions.
According to Pearson’s theorem, under H₀, D follows a χ² probability law with 1 degree of freedom (df)." 

- After the modeling we like to check how likely the samples are under H₀ 
"""
It consists in computing the observed D and deriving its corresponding p-value according to the χ² law."""

The p-value returned helps us determine whether the results are statistically significant. In this case, they were not, 
however as mentioned in the Challenge 1, it is always good to understand and critize your tests. For example, instead the X2-test we could
have performen the Z-test, that would have resulted with a statistically significant results. 

Hence, it's always good to critically evaluate your results. 







