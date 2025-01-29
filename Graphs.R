#Distance from each team, number of appearances
ggplot(TeamAppNumDivDist, aes(x = Distance,
                              y = reorder(Team, Distance),
                              fill = Appearance))+
  geom_col()+
  theme(axis.text.x = element_text(angle = 0),
        legend.position = "right")+
  ggtitle("Number of Grid Appearances in July for All 30 MLB Teams",
          subtitle = "Ordered by Distance (in miles) from Williston, FL")+
  xlab("Distance")+
  ylab("Teams")+
  theme(legend.position = "bottom")+
  guides(fill = guide_legend("# of Appearances"))

#Category appearances
ggplot(CatAppNumC, aes(x = reorder(Milestone, Appearance), y = Appearance, fill = Category))+
  geom_col()+
  coord_flip()+
  theme(axis.text.x = element_text(angle = 0))+
  ggtitle("Number of Grid Appearances in July",
          subtitle = "For Each Milestone Category")+
  xlab("Milestones")+
  ylab("Appearance Numbers")

#Daily grid scores
ggplot(TotalScore, aes(x = Date, y = Score))+
  geom_line(color = "grey")+
  geom_point(color = "blue")+
  geom_smooth(se = FALSE)+
  scale_y_continuous(limits = c(0, 900), 
                     breaks = c(0, 100, 200, 300, 400, 500, 600, 700, 800, 900))+
  ggtitle("Total Grid Scores by Daily Score in July",
          subtitle = "Scores Above 700 Raise Questions")+
  theme(axis.text.x = element_text(angle = 0))

#Average team scores, distance, appearances
ggplot(NewScoreDist2, aes(x = AverageScore,
                          y = reorder(Team, AverageScore),
                          color = Distance,
                          shape = Appearance))+
  geom_point(size = 4)+
  scale_shape_manual(values = c(15, 16, 17, 18))+
  labs(shape = "# of Appearances", color = "Distance (in miles)")+
  scale_color_manual(values = c("#21618c", "#2e86c1", "#5dade2"),
                     labels = c("0-750", "751-1500", "1500+"))+
  theme(axis.text.x = element_text(angle = 0),
        legend.position = "right",
        panel.background = element_rect(fill = "lightgrey",
                                        color = "lightgrey"),
        plot.caption = element_text(hjust = 0.5))+
  labs(title = "Discovering the Most Troubling Teams",
          subtitle = "Average Grid Score for Each MLB Team in July",
       caption = "We are going to dive deeper into the 10 teams with the worst average grid score.")+
  xlab("Average Team Grid Score")+
  ylab("Teams")

#Average team scores, distance, appearances CHANGES
ggplot(NewScoreDist2, aes(x = DistanceNum,
                          y = reorder(Team, DistanceNum),
                          color = AverageScore,
                          shape = Appearance))+
  geom_point(size = 4)+
  scale_shape_manual(values = c(15, 16, 17, 18))+
  scale_color_gradient(low = "black", high = "#5dade2")+
  labs(shape = "# of Appearances", color = "Average Grid Score")+
  theme(axis.text.x = element_text(angle = 0),
        legend.position = "right",
        panel.background = element_rect(fill = "lightgrey",
                                        color = "lightgrey"),
        plot.caption = element_text(hjust = 0.5))+
  labs(title = "Average Grid Score for Each MLB Team in July 2023",
       subtitle = "Comparing Distance and Average Team Score",
       caption = "We are going to dive deeper into the 10 teams with the highest average grid score.")+
  xlab("Distance (in miles)")+
  ylab("Teams")

#High scoring teams graph
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

#Average category scores, appearances
ggplot(ScoreCatNew, aes(x = AverageScore,
                           y = reorder(Milestone, AverageScore),
                           color = Category,
                           shape = Appearance))+
  geom_point(size = 4)+
  scale_shape_manual(values = c(15, 16, 17, 18))+
  theme(legend.position = "bottom",
        plot.caption = element_text(hjust = 0.5))+
  labs(title = "Average Score for Each Milestone",
          subtitle = "With Relation to Milestone Category
      and Number of Appearances",
       caption = "We're going to focus on the five highest
       statistic categories and the two
       highest awards categories.")+
  xlab("Average Score")+
  ylab("Milestone") 

#Average category scores, appearances CHANGES
ggplot(ScoreCatNew, aes(x = AverageScore,
                        y = reorder(Milestone, AverageScore),
                        color = Category,
                        shape = Appearance))+
  geom_point(size = 4)+
  scale_shape_manual(values = c(15, 16, 17, 18))+
  theme(legend.position = "bottom",
        plot.caption = element_text(hjust = 0.5))+
  labs(title = "Average Score for Each Milestone",
       subtitle = "With Relation to Milestone Category
      and Number of Appearances",
       caption = "We're going to focus on the five highest
       statistic categories and the two
       highest awards categories.")+
  xlab("Average Score")+
  ylab("Milestone")

#High score category CHANGES
ggplot(HighScoreCat2, aes(x = AverageScore,
                          y = reorder(Milestone, AverageScore),
                          color = Category,
                          shape = Appearance))+
  geom_point(size = 10)+
  scale_shape_manual(values = c(15, 16, 17))+
  theme(legend.position = "right")+
  labs(title = "More Grid Appearances Result in Lower Average Scores",
       subtitle = "My Seven Worst Milestone Average Scores")+
  xlab("Average Score")+
  ylab("Milestone")
