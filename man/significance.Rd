% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/custom_tables_significance.R,
%   R/significance_cases.R, R/significance_cpct.R, R/significance_means.R
\name{tab_significance_options}
\alias{tab_significance_options}
\alias{tab_last_sig_cpct}
\alias{tab_last_sig_means}
\alias{tab_last_sig_cases}
\alias{tab_last_round}
\alias{tab_last_add_sig_labels}
\alias{significance_cases}
\alias{significance}
\alias{significance_cpct}
\alias{add_sig_labels}
\alias{significance_means}
\title{Mark significant differences between columns of the table}
\usage{
tab_significance_options(data, sig_level = 0.05, min_base = 2,
  delta_cpct = 0, delta_means = 0, compare_type = "subtable",
  bonferroni = FALSE, subtable_marks = "greater", inequality_sign = "both"
  \%in\% subtable_marks, sig_labels = LETTERS,
  sig_labels_previous_column = c("v", "^"), sig_labels_first_column = c("-",
  "+"), keep = c("percent", "cases", "means", "sd", "bases"),
  total_marker = "#", total_row = 1, digits = get_expss_digits(),
  na_as_zero = FALSE, var_equal = FALSE, mode = c("replace", "append"))

tab_last_sig_cpct(data, sig_level = 0.05, delta_cpct = 0, min_base = 2,
  compare_type = "subtable", bonferroni = FALSE,
  subtable_marks = c("greater", "both", "less"), inequality_sign = "both"
  \%in\% subtable_marks, sig_labels = LETTERS,
  sig_labels_previous_column = c("v", "^"), sig_labels_first_column = c("-",
  "+"), keep = c("percent", "bases"), na_as_zero = FALSE,
  total_marker = "#", total_row = 1, digits = get_expss_digits(),
  mode = c("replace", "append"), label = NULL)

tab_last_sig_means(data, sig_level = 0.05, delta_means = 0, min_base = 2,
  compare_type = "subtable", bonferroni = FALSE,
  subtable_marks = c("greater", "both", "less"), inequality_sign = "both"
  \%in\% subtable_marks, sig_labels = LETTERS,
  sig_labels_previous_column = c("v", "^"), sig_labels_first_column = c("-",
  "+"), keep = c("means", "sd", "bases"), var_equal = FALSE,
  digits = get_expss_digits(), mode = c("replace", "append"),
  label = NULL)

tab_last_sig_cases(data, sig_level = 0.05, min_base = 2, keep = c("cases",
  "bases"), total_marker = "#", total_row = 1,
  digits = get_expss_digits(), mode = c("replace", "append"),
  label = NULL)

tab_last_round(data, digits = get_expss_digits())

tab_last_add_sig_labels(data, sig_labels = LETTERS)

significance_cases(x, sig_level = 0.05, min_base = 2, keep = c("cases",
  "bases"), total_marker = "#", total_row = 1,
  digits = get_expss_digits())

significance_cpct(x, sig_level = 0.05, delta_cpct = 0, min_base = 2,
  compare_type = "subtable", bonferroni = FALSE,
  subtable_marks = c("greater", "both", "less"), inequality_sign = "both"
  \%in\% subtable_marks, sig_labels = LETTERS,
  sig_labels_previous_column = c("v", "^"), sig_labels_first_column = c("-",
  "+"), keep = c("percent", "bases"), na_as_zero = FALSE,
  total_marker = "#", total_row = 1, digits = get_expss_digits())

add_sig_labels(x, sig_labels = LETTERS)

significance_means(x, sig_level = 0.05, delta_means = 0, min_base = 2,
  compare_type = "subtable", bonferroni = FALSE,
  subtable_marks = c("greater", "both", "less"), inequality_sign = "both"
  \%in\% subtable_marks, sig_labels = LETTERS,
  sig_labels_previous_column = c("v", "^"), sig_labels_first_column = c("-",
  "+"), keep = c("means", "sd", "bases"), var_equal = FALSE,
  digits = get_expss_digits())
}
\arguments{
\item{data}{data.frame/intermediate_table for \code{tab_*} functions.}

\item{sig_level}{numeric. Significance level - by default it equals to \code{0.05}.}

\item{min_base}{numeric. Significance test will be conducted if both
columns have bases greater than \code{min_base}. By default it equals to \code{2}.}

\item{delta_cpct}{numeric. Minimal delta between percent for which we mark 
significant differences (in percent points) - by default it equals to zero.
Note that, for example, for minimal 5 percent difference
\code{delta_cpct} should be equals 5, not 0.05.}

\item{delta_means}{numeric. Minimal delta between means for which we mark 
significant differences  - by default it equals to zero.}

\item{compare_type}{Type of compare between columns. By default it is 
\code{subtable} - comparisons will be conducted between columns of each 
subtable. Other possible values are: \code{first_column}, 
\code{adjusted_first_column} and \code{previous_column}. We can conduct
several tests simultaneously.}

\item{bonferroni}{logical. \code{FALSE} by default. Should we use Bonferroni
adjustment by number of comparisons in each row?}

\item{subtable_marks}{character. One of "greater", "both" or "less". By
deafult we mark only values which are significantly greater than some other
columns. We can change this behavior by setting argument to \code{less} or
\code{both}.}

\item{inequality_sign}{logical. FALSE if \code{subtable_marks} is "less" or 
"greater". Should we show \code{>} or \code{<} before significance marks of
subtable comparisons.}

\item{sig_labels}{character vector. Labels for marking differences between
columns of subtable.}

\item{sig_labels_previous_column}{a character vector with two elements. Labels
for marking difference with previous column. First mark means 'lower' (by
default it is \code{v}) and the second means greater (\code{^}).}

\item{sig_labels_first_column}{a character vector with two elements. Labels 
for marking difference with first column of the table. First mark means
'lower' (by default it is \code{-}) and the second means 'greater'
(\code{+}).}

\item{keep}{character. One or more from "percent", "cases", "means", "bases", 
"sd" or "none". This argument determines which statistics will remain in
the table after significance marking.}

\item{total_marker}{character. Mark of total rows in table.}

\item{total_row}{integer/character. In case of several totals per subtable it
is number or name of total row for significance calculation.}

\item{digits}{an integer indicating how much digits after decimal separator 
will be shown in the final table.}

\item{na_as_zero}{logical. \code{FALSE} by default. Should we treat
\code{NA}'s as zero cases?}

\item{var_equal}{a logical variable indicating whether to treat the two
variances as being equal. For details see \link[stats]{t.test}.}

\item{mode}{character. One of \code{replace}(default) or \code{append}. In
the first case the previous result in the sequence of table calculation
will be replaced with result of significance testing. In the second case
result of the significance testing will be appended to sequence of table
calculation.}

\item{label}{character. Label for the statistic in the \code{tab_*}. Ignored
if the \code{mode} is equals to \code{replace}.}

\item{x}{table (class \code{etable}): result of \link{cro_cpct} with 
proportions and bases for \code{significance_cpct}, result of 
\link{cro_mean_sd_n} with means, standard deviations and valid N for 
\code{significance_means}, and result of \link{cro_cases} with counts and
bases for \code{significance_cases}.}
}
\value{
\code{tab_last_*} functions return objects of class 
  \code{intermediate_table}. Use \link{tab_pivot} to get final result - 
  object of class \code{etable}. Other functions return object of class
  \code{etable} with marks of significant differences between columns.
}
\description{
\itemize{
\item{\code{significance_cpct}}{ conducts z-tests between column percent in
the result of \link{cro_cpct}. Results are calculated with the same formula 
as in \link[stats]{prop.test} without continuity correction.}
\item{\code{significance_means}}{ conducts t-tests between column means in
the result of \link{cro_mean_sd_n}. Results are calculated with the same formula 
as in \link[stats]{t.test}.}
\item{\code{significance_cases}}{ conducts chi-squared tests on the subtable of
table with counts in the result of \link{cro_cases}. Results are calculated
with the same formula as in \link[stats]{chisq.test} without continuity
correction.}} 
There are four type of comparisons which can be conducted simultaneously 
(argument \code{compare_type}). \code{subtable} provide comparison between
all columns inside each subtable. \code{previous_column} is comparison of
each column in the subtable with previous column. It is useful if columns are
periods or waves of survey. \code{first_column} provide comparison of table
first column with all other columns in the table.
\code{adjusted_first_column} is comparison with first column but with
adjustment for common base. It is useful if first column is total column and
other columns are subgroup of this total. Adjustments are made according to
algorithm in IBM SPSS Statistics Algorithms v20, p. 263. Note that with these
adjustments t-tests between means are made with equal variance assumed (as
with \code{var_equal = TRUE}).
By now there are no adjustments for multiple-response variables (results of 
\link{mrset}) in the table columns so significance tests are rather 
approximate for such cases.
Also there are functions for significance testing in the sequence of custom
tables calculations (see \link{tables}).
\itemize{
\item{\code{tab_last_sig_cpct}, \code{tab_last_sig_means} and 
\code{tab_last_sig_cpct}}{ make the same tests as there analogs mentioned 
above. It is recommended to use them after appropriate statistic function: 
\link{tab_stat_cpct}, \link{tab_stat_mean_sd_n} and \link{tab_stat_cases}.
}
\item{\code{tab_significance_options}}{ With this function we can set
significance options for entire custom table creation sequence.}
\item{\code{tab_last_add_sig_labels}}{ This function applies 
\code{add_sig_labels} to last calculated table - it add labels (letters by
default) for significance to columns header. It may be useful if you want to
combine table with significance with table without it.}
\item{\code{tab_last_round}}{ This function rounds numeric columns in the
last calculated table to specified number of digits. It is sometimes
needed if you want to combine table with significance with table without it.}
}
}
\examples{
data(mtcars)
mtcars = apply_labels(mtcars,
                      mpg = "Miles/(US) gallon",
                      cyl = "Number of cylinders",
                      disp = "Displacement (cu.in.)",
                      hp = "Gross horsepower",
                      drat = "Rear axle ratio",
                      wt = "Weight (lb/1000)",
                      qsec = "1/4 mile time",
                      vs = "Engine",
                      vs = c("V-engine" = 0,
                             "Straight engine" = 1),
                      am = "Transmission",
                      am = c("Automatic" = 0,
                             "Manual"=1),
                      gear = "Number of forward gears",
                      carb = "Number of carburetors"
)

mtcars_table = calculate(mtcars,
                   cro_cpct(list(cyl, gear),
                            list(total(), vs, am))
                         )

significance_cpct(mtcars_table)

# comparison with first column
significance_cpct(mtcars_table, compare_type = "first_column")

# comparison with first column and inside subtable
significance_cpct(mtcars_table, 
            compare_type = c("first_column", "subtable"))

# only significance marks
significance_cpct(mtcars_table, keep = "none")

# means
mtcars_means = calculate(mtcars,
                   cro_mean_sd_n(list(mpg, wt, hp),
                                 list(total(), vs, cyl))
                        )
                        
significance_means(mtcars_means) 

# mark values which are less and greater
significance_means(mtcars_means, subtable_marks = "both")

# chi-squared test
mtcars_cases = calculate(mtcars,
                   cro_cases(list(cyl, gear),
                            list(total(), vs, am))
                         )
                         
significance_cases(mtcars_cases)    

# custom tables with significance
mtcars \%>\% 
    tab_significance_options(subtable_marks = "both") \%>\% 
    tab_cells(mpg, hp) \%>\% 
    tab_cols(total(), vs, am) \%>\% 
    tab_stat_mean_sd_n() \%>\% 
    tab_last_sig_means(keep = "means") \%>\% 
    tab_cells(cyl, gear) \%>\% 
    tab_stat_cpct() \%>\% 
    tab_last_sig_cpct() \%>\% 
    tab_pivot()   
    
# Overcomplicated examples - we move significance marks to
# separate columns. Columns with statistics remain numeric    
mtcars \%>\% 
    tab_significance_options(keep = "none", 
                         sig_labels = NULL, 
                         subtable_marks = "both",  
                         mode = "append") \%>\% 
    tab_cols(total(), vs, am) \%>\% 
    tab_cells(mpg, hp) \%>\% 
    tab_stat_mean_sd_n() \%>\% 
    tab_last_sig_means() \%>\% 
    tab_last_hstack("inside_columns") \%>\% 
    tab_cells(cyl, gear) \%>\% 
    tab_stat_cpct() \%>\% 
    tab_last_sig_cpct() \%>\% 
    tab_last_hstack("inside_columns") \%>\% 
    tab_pivot(stat_position = "inside_rows") \%>\% 
    drop_empty_columns()       
}
\seealso{
\link{cro_cpct}, \link{cro_cases}, \link{cro_mean_sd_n}, \link{tables},
  \link{compare_proportions}, \link{compare_means}, \link[stats]{prop.test},
  \link[stats]{t.test}, \link[stats]{chisq.test}
}
