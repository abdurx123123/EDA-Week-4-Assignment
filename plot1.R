> NEI <- readRDS("summarySCC_PM25.rds")
> SCC <- readRDS("Source_Classification_Code.rds")
> totalEmissions <- tapply(NEI$Emissions, NEI$year, sum)
> barplot(totalEmissions, xlab = "Year", ylab = "Total Emission (ton)",main = "Total Emission per year")
