> coalMatches  <- grepl("coal", SCC$Short.Name, ignore.case=TRUE)
> subsetSCC <- SCC[coalMatches, ]
> NEISCC <- merge(NEI, subsetSCC, by="SCC")
> totalEmissions <- tapply(NEISCC$Emissions, NEISCC$year, sum)
> barplot(totalEmissions, xlab = "Year", ylab = "Total Emission (ton)", 
+         main = "Total Emission from coal sources")
