# culture-CX
the study of the six standardized areas of patients’ experience.  Exploring data to determine next steps of how join additional data related to hospital staff engagement. 
Written with R-Studio in 2019 (when I thought that was the best tool).  Data is pulled into a dataframe
Dataframe has ~ 31000 observations have star ratings... data is 1,2,3,4,Not Applicable need to remove NA and convert to numberic
Runs as far as Line: as.numeric(levels(myExploratoryData$Patient.Survey.Star.Rating))[]
And then produces result: [1]  1  2  3  4  5 NA NA
And error message: Warning message:
                    NAs introduced by coercion 
Branching project to see if iPython using Pandas is faster
