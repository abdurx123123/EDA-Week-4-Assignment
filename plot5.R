> vehicleMatches  <- grepl("vehicle", SCC$SCC.Level.Two, ignore.case=TRUE)
> subsetSCC <- SCC[vehicleMatches, ]
> NEISCC <- merge(balt, subsetSCC, by="SCC")
> totalEmissions <- tapply(NEISCC$Emissions, NEISCC$year, sum)
> barplot(totalEmissions, xlab = "Year", ylab = "Total Emission (ton)", 
+         main = "Total Emission from motor sources in Baltimore")
