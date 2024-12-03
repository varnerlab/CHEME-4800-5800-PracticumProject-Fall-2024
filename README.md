# Practicum Project for CHEME 4800/5800 Fall 2024
In this project students will develop a Software Development Kit (SDK) for the [polygon.io financial data application programming interface (API)](https://polygon.io).

## Project Description
The project will be divided into two parts. The first part will be to develop a Julia SDK that will allow users to access specific endpoints [polygon.io API](https://polygon.io). The second part will be to use the SDK to download information about companies, their stock prices and to analyze the data.

### Learning Objectives
- Learn how to develop a SDK in Julia that interacts [with a RESTful API]().
- Learn how to use the SDK to download and analyze textual and numerical data sets from the API.

### Tasks
1. Develop a SDK in Julia that interacts with the [polygon.io API](https://polygon.io). In particular, we want to be able to query the following endpoints: [Reference data ticker news enpoint](https://polygon.io/docs/stocks/get_v2_reference_news) and [Market data Aggrehates endpoint](https://polygon.io/docs/stocks/get_v2_aggs_ticker__stocksticker__range__multiplier___timespan___from___to). When developing the SDK, you should consider the following:
    - The SDK should be able to handle errors gracefully and provide informative error messages. The SDK should also practice defensive programming, i.e., check the inputs to the functions and raise errors if the inputs are not correct. Futher, the SDK should provide reasonable default values for the inputs, which can be overridden by the user.
    - The SDK logic should be implemented in the placeholder files in the `src` directory. The public facing portions of the SDK should have informative docstrings and the code should be well commented.
    - We've provided a default `Include.jl` file that includes the necessary packages for the SDK. However, add additional packages to the `Include.jl` file to complete the SDK, point to other files, etc.

2. Use the SDK to download the news and ticker data for a user specified company. The user should be able to specify the company by its ticker symbol. The user should also be able to specify the date range for the data download, the frequency of the data, and the type of data to download. In both cases, the user should be able to specify the output format of the data (e.g., JSON, CSV, etc.).

4. Develop a Jupyter notebook that demonstrates how to use the SDK to download and analyze the data. The notebook should include the following: loading user API key (or other information) in a seperate `conf/Configuration.toml` file, example code to download news and ticker data for a user specified company (including a demonstration of error handling), and example code to analyze the data, e.g., what is the mean growth rate, and the volatility for the company over the date range specified by the user, and the sentiment of the news articles downloaded for the company.

5. The notebook should be well commented and should include markdown cells that explain the code and the results of the analysis. See the sections of the template notebook for examples of what should be included in the notebook.

Using this price data, we can compute the annualized growth rate (return) over a period $\Delta{t}$ (units: years) for ticker `i` as follows:
$$
\begin{equation*}
\mu^{(i)}_{j,j-1} = \frac{1}{\Delta{t}}\cdot\ln\left(\frac{S^{(i)}_j}{S^{(i)}_{j-1}}\right)\quad\text{for}\quad j = 2,3,\ldots,N
\end{equation*}
$$
where $S^{(i)}_{\star}$ is the price of the asset at time $t = \star$ and $\Delta{t}$ is the time difference between time steps $j$ and $j-1$, and $N$ is the number of time steps. The annualized volatility of the asset is computed as the `sqrt` of the variance of the growth rates, where the annualized variance of the growth rate is given by:
$$
\begin{equation*}
\text{Var}(S_{j}/S_{j-1}) = \sigma^{2}\cdot\Delta{t}
\end{equation*}
$$
where the annualized volatility is given by $\sqrt{\text{Var}(S_{j}/S_{j-1})} = \sigma\sqrt{\Delta{t}}$, and $\sigma$ is the standard deviation of the growth rates.

### Assessment
* The teaching team will execute the `Practicum.ipynb` notebook with your program functions. 
* The teaching team will evaluate style components: variable and function names should be informative, and functions should have informative docstrings. 
* The teaching team will evaluate whether the submission guidelines were followed.

Scoring will be based on the following criteria:
- A score of `0` will be given if the code does not run, i.e., there are major syntax errors, the code does not implement the required endpoints, etc.
- A score of `1` will be given if _some_ code runs but does not meet the overall requirements, e.g., the SDK does not implement the required endpoints, the endpoints do not return the correct data, there are errors in the code, etc.
- A score of `2` will be given if the code runs and meets the overall requirements, but the code is not well commented or the docstrings are not informative.
- A score of `3` will be given if the code runs, meets the overall requirements, and the code is well commented and the docstrings are informative.

### Rules, deadlines, and submission guidelines
* The practicum is due on __Saturday, December 21, 2024__ by __11:50 PM__ ITH time. This is a first submission deadline (revisions may be requested by the teaching team in case of issues).
* You may use your course materials and any literature resources (as well as the internet) to formulate your solutions.
* You __MAY__ work in terms (up to 3 people max) or individually. Submit your solution to the GitHub Classroom link by the deadline.