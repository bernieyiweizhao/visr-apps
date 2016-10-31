visr.applyParameters()

input_scores <- TRUE # should this be moved to the parameters?

output_princomp <- princomp(x = visr.input[,input_columns], cor = input_cor, scores = input_scores)
# summary(output_princomp) # print variance accounted for 
# loadings(output_princomp) # pc loadings 

if (input_choiceofplot == "biplot") {
    biplot(output_princomp) # screeplot 
} else {
    plot(output_princomp, type="lines")
}

#if(input_scores == TRUE) {
output_scores <- output_princomp$scores
if (length(concat_columns) > 0) {
	output_scores <- cbind(visr.input[,concat_columns], output_scores)
}

output_ev <- as.matrix(output_princomp$loadings[])
#} # the principal components

#print(capture.output(cat("\nComponent loadings:\n")),collapse='\n')
#print(capture.output(print(unclass(loadings(output_princomp)))),collapse='\n')
#print(unclass(loadings(output_princomp)))

#print(capture.output(cat("\nComponent variances:\n")),collapse='\n')
#print(capture.output(print(output_princomp$sd^2)),collapse='\n')


#print(capture.output(cat("\n")),collapse='\n')
#print(capture.output(print(summary(output_princomp))),collapse='\n')

