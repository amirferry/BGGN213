# Class 5 - Data Visualization

x <- rnorm(1000)

# Command + Return (while on line(s) of interest) will run the code 

# How  many things are in x
length(x)

mean(x)
sd(x)

# Summary statistics
summary(x)
# Different graphs
boxplot(x)
hist(x)
rug(x)

# Alphabetical almost always a bad way of presenting data 
# The only thing worse than a pie chart is several of them

# Section2
weight <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)
plot(weight$Age, weight$Weight, type = "o", pch = 15, col = "blue", xlab = "Age (months)", ylab = "Weight (kg)", main = "Baby Weight With Age", ylim=c(2,10))

mouse <- read.delim("bimm143_05_rstats/feature_counts.txt")
                    
                    
# Plotting labels - xlab, ylab, main = "label"
# Different read functions premade with different parameters (read.table, read.delim etc)

# Set parameters before plotting data
par(mar=c(3.1, 11.1, 4.1, 2))
barplot(mouse$Count, horiz = TRUE, names.arg = mouse$Feature, main = "TITLE", las = 1, xlim=c(0,80000))

x <- c(rnorm(10000), rnorm(10000)+4)
hist(x, breaks = 50)

# Use delim function b/c sep = \tab between variables of interest
# par(mar=c(bottom, left, top, right))
par(mar=c(7,5,6,3))
MF <- read.delim("bimm143_05_rstats/male_female_counts.txt")
barplot(MF$Count, col=rainbow(nrow(MF)), names.arg = MF$Sample, las=2, ylab="Counts")

# col=rainbow(nrow(MF))

# vector recycling -- will go B/R/B/R
barplot(MF$Count, names.arg = MF$Sample, las=2,col=c("blue", "red"), main="Counts")

genes <- read.delim("bimm143_05_rstats/up_down_expression.txt")
nrow(genes)
table(genes$State)

par(mar=c(5,5,5,3))
plot(genes$Condition1, genes$Condition2, col=genes$State, 
     xlab="Expression condition 1", ylab="Expression condition 2") 

palette()
levels(genes$State)

# Define the palette you want to use
palette(c("red", "grey", "blue"))
plot(genes$Condition1, genes$Condition2, col=genes$State, 
     xlab="Expression condition 1", ylab="Expression condition 2")

meth <- read.delim("bimm143_05_rstats/expression_methylation.txt", row.names = 1)

# Number of genes in this set
nrow(meth)

dcols2 <- densCols(meth$gene.meth, meth$expression)
plot(meth$gene.meth, meth$expression, col= dcols2, pch=20)

inds <- meth$expression > 0
dcols2 <- densCols(meth$gene.meth[inds], meth$expression[inds])

plot(meth$gene.meth[inds], meth$expression[inds], col=dcols2, pch=20)

dcols3 <- densCols(meth$gene.meth[inds], meth$expression[inds],
                   colramp = colorRampPalette(c("blue2",
                                                "green2",
                                                "red2",
                                                "yellow2")))

plot(meth$gene.meth[inds], meth$expression[inds], col=dcols3, pch=20)









