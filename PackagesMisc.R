library(dplyr)
library(GGally)
library(ggformula)
library(ggfortify)
library(ggplot2)
library(mosaic)
library(RColorBrewer)
library(readxl)
library(tidyverse)
install.packages("gghighlight")
library(gghighlight)

Dates <- c("July 1", "July 2", "July 3", "July 4", "July 5", "July 6", "July 7",
           "July 8", "July 9", "July 10", "July 11", "July 11 #2", "July 12", "July 13",
           "July 14", "July 15", "July 16", "July 17", "July 18", "July 19", "July 20",
           "July 21", "July 22", "July 23", "July 24", "July 25", "July 26", "July 27", 
           "July 28", "July 29", "July 30", "July 31")

geom_col()+
  coord_cartesian(ylim = c(2,6))+
  theme(axis.text.x = element_text(angle = 90))+
  ggtitle("Number of Appearances", subtitle = "For All Teams")+
  xlab("Teams")+
  ylab("Appearance Numbers")

ggplot(TeamAppNumD, aes(x = Appearance, y = Team, fill = Division))+
  geom_col()+
  coord_cartesian(ylim = c(2,6))+
  theme(axis.text.x = element_text(angle = 90),
        legend.position = "top")+
  ggtitle("Number of Appearances", subtitle = "For All Teams")+
  xlab("Teams")+
  ylab("Appearance Numbers")+
  scale_fill_brewer(palette = "Set2")

ggplot(CatAppNumC, aes(x = Category, y = Appearance, fill = Category))+
  geom_col()+
  coord_cartesian(ylim = c(1,4))+
  theme(axis.text.x = element_text(angle = 90))+
  ggtitle("Number of Appearances", subtitle = "For Awards and Statistics")+
  xlab("Awards/Statistics")+
  ylab("Appearance Numbers")

ggplot(TS4, aes(x = Date, y = Score))+
  geom_point()+
  geom_path()+
  scale_y_continuous(limits = c(0, 900), 
                     breaks = c(0, 100, 200, 300, 400, 500, 600, 700, 800, 900))+
  ggtitle("Total Grid Scores", subtitle = "By Daily Score")+
  theme(axis.text.x = element_text(angle = 90))

ggplot(HighScoreTeams, aes(x = Distance,
                          y = reorder(Team, Distance),
                          color = AverageScore))+
  geom_point(size = 6)+
  theme(axis.text.x = element_text(angle = 0),
        legend.position = "right")+
  ggtitle("Distance Away From Each MLB Team (in miles)",
          subtitle = "With Relation to Average Grid Score
      and Number of Appearances")+
  xlab("Distance (in miles)")+
  ylab("Teams")

ggplot(HighScoreCat2, aes(x = AverageScore,
                          y = reorder(Milestone, AverageScore),
                          color = Appearance,
                         shape = Category))+
  geom_point(size = 10)+
  theme(legend.position = "right")+
  labs(title = "More Grid Appearances Result in Lower Average Scores",
          subtitle = "My Seven Worst Milestone Average Scores")+
  xlab("Average Score")+
  ylab("Milestone")+
  scale_color_manual(values = c("#21618c", "#2e86c1", "#5dade2"))

ggplot(TeamAvgDAW, aes(x = Wins,
                y = reorder(Team, Wins),
                color = AverageScore))+
  geom_point(size = 10)+
  theme(axis.text.x = element_text(angle = 0),
        legend.position = "right")+
  ggtitle("More Team Wins Lead to Lower Average Grid Scores",
          subtitle = "My 10 Worst Average Team Scores")+
  ylab("Teams")+
  xlab("Team Wins through July 2023")

sort(ScoreCategory2$AverageScore, decreasing = TRUE)[1:10]

ggplot(TeamAppNumDivDist, aes(x = Appearance,
                              y = reorder(Team, Appearance)))+
  geom_col(color = 'white', fill = 'blue')+
  theme(axis.text.x = element_text(angle = 0),
        legend.position = "right")+
  ggtitle("Number of Grid Appearances in July for All 30 MLB Teams")+
  ylab("Teams")+
  xlab("# of Appearances")
