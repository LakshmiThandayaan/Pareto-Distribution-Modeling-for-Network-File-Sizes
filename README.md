## Project Overview
This project analyzes the distribution of file sizes transmitted through an internet network using statistical methods. The primary objective is to model the distribution using a Pareto distribution and derive meaningful insights that can assist network administrators in managing file sizes.

### Situation
In network management, understanding the distribution of file sizes is crucial for optimizing bandwidth, storage, and overall network efficiency. Large file sizes can significantly impact network performance, and thus, it's important to model and estimate the distribution of these file sizes to make informed decisions.

### Task
The task was to analyze a random sample of 1000 file sizes, determine the appropriate statistical distribution that models the data, estimate the distribution's parameters, and provide actionable insights, such as setting upper limits on file sizes to ensure network efficiency.

### Action

1.Data Analysis:

* A random sample of 1000 file sizes (in kB) was taken. 
* Summary statistics such as the mean, standard deviation, median, and quantiles were computed.
* A histogram was generated to visually inspect the distribution, which showed a positively skewed distribution with a heavy tail.

2. Modeling with Pareto Distribution:

* Recognizing the characteristics of the Pareto distribution (positive skewness and heavy tail), a Pareto model was selected to describe the data.
* The probability density function of the Pareto distribution was defined, with a minimum file size ($𝑥_𝑚$) of 1000 kB.

3. Estimation of Parameter $\alpha$:

* The parameter $\alpha$ was estimated using the maximum likelihood estimation (MLE) method, resulting in $𝛼 = 2.793$.
* The Fisher Information for $\alpha$ was calculated to be 128.18, which was used to derive the standard error and confidence intervals.

4. Simulation and Analysis:

* Using the estimated parameters, a simulation of 1000 samples from the Pareto distribution was conducted to estimate and analyze the distribution of the sample mean.
* The histogram of the sample mean was generated, showing convergence to a normal distribution as expected for large samples.

5. Setting Upper Limit:

* Based on the analysis, it was determined that setting an upper limit of 5201 kB would ensure that 99% of the file sizes are accepted by the network.

### Result

The analysis concluded that the file sizes transmitted through the network followed a Pareto distribution with a shape parameter $\alpha = 2.793$. The 95% confidence interval for 
$\alpha$ was found to be [2.620, 2.966]. Furthermore, a practical application was derived by suggesting that an upper limit of 5201 kB would accommodate 99% of the file sizes, helping network administrators manage file traffic more effectively.
