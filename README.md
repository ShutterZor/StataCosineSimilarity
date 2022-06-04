# StataCosineSimilarity

Calculating cosine similarity with Stata


$$
cosine\ similarity = \frac{\boldsymbol{A}\cdot\boldsymbol{B}}{||\boldsymbol{A}||\times ||\boldsymbol{B}||}=\frac{\sum_{i=1}^{n}A_i\times B_i}{\sqrt{\sum_{i=1}^{n}(A_i)^2}\sqrt{\sum_{i=1}^{n}(B_i)^2}}
$$


# example

句子A：$[0,1,1,0]$

句子B：$[1,2,2,1]$
$$
cs = \frac{0\times1+1\times2+1\times2+0\times1}{\sqrt{0^2+1^2+1^2+0^2}\times\sqrt{1^2+2^2+2^2+1^2}}=\frac{4}{\sqrt{2\times10}}=2/\sqrt{5}\approx 0.894
$$
