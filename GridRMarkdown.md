My Statistical Breakdown of Immaculate Grid Success
================
Anthony Griffith
2025-01-24

# What is the Immaculate Grid?

The Immaculate Grid is an online web browser game that has become
increasingly popular over the past year. It is a 3x3 grid with 9
different squares to input players. The object of the game is to guess
players that qualify for each square combination. To make things more
challenging, you only get nine guesses to complete the entire grid.

The goal is to not only find players that meet the requirements for each
square, but to find players that many people will not think of. Each
correct guess gets a “rarity score,” and your total score is a summation
of all nine separate scores. Each incomplete grid is worth 100 points;
the lower your overall score is, the better you performed.

# Background & Project Questions

There are two very common questions that I and many other players of the
Immaculate Grid game often ask:

1.  What teams and categories cause me the most trouble and tend to make
    my score worse?
2.  Is there any specific reason as to why these teams and categories
    inflate my numbers?

While these may seem like general questions, they are critical in trying
to understand what makes us struggle and succeed at this game. So, I
decided to take my own scores and complie some thoughts as to what may
be causing these troubles.

In order to collect the data, I completed every grid in the month of
July 2023 and collected the following numbers: overall score, teams,
categories, the amount of appearances for those teams and categories,
and the average score for each of them.

# Daily Grid Scores

![](GridRMarkdown_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

As you can see here, my scores varied pretty drastically day by day.
However, it is worth noting that my average score decreased in the
middle of the month, but increased towards the end of it. Since my
average score was the highest at the beginning of July, I do want to
look at the scores that are above 700, since those tend to have the
greatest negative impact.

# Assessment of Teams

![](GridRMarkdown_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

This graph shows the mileage between my hometown and the location of
every team’s stadium, along with the number of times they have appeared.
My main reason for starting with this kind of graph is that I wanted to
try and see if there was any connection between my location and the
number of times a team appeared on a grid. As you can tell, it looks
like the teams are chosen at random, so I decided to dive a little
deeper.

## Team Scoring

![](GridRMarkdown_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

Now this graph still shows the distance in miles and the number of
appearances, but now it adds in my average grid score for each team. I
wanted to see if mileage plays any sort of factor in my success or
failures for teams. You will notice that teams with a high average grid
score have a much brighter point color on the graph. I’ve decided to
choose the ten teams with the worst average score and dive into those
teams specifically. The teams I am looking at are the Atlanta Braves,
Baltimore Orioles, New York Yankees, Cincinnati Reds, Cleveland
Guardians, Seattle Mariners, Pittsburgh Pirates, Chicago White Sox,
St. Louis Cardinals, and Kansas City Royals.

![](GridRMarkdown_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

For the final graph in the team portion of this exploration, I chose the
ten teams I just mentioned and showcased the number of wins they had at
the end of the month of July in 2023, and added my average grid score.
The three teams with my worst grid scores are the Kansas City Royals,
St. Louis Cardinals, and Cleveland Guardians. You will also notice that
those three teams are in the bottom half of this list for team wins.

## Takeaways

Surprisingly, there is no definite trend where geographical location and
distance apart from teams will increase/decrease scores. However, my top
ten worst teams’ average scores were slightly dependent on team wins
through July 2023. I think this is directly caused by the amount of
success and real life publicity that teams can have. When teams win,
they get more publicity. More publicity leads to more player knowledge,
and more player knowledge leads to lower scores. Another factor that I
wanted to try and take into account was the amount of times that each
team appeared on the grid, but the number of appearances on the grid
don’t seem to have a massive impact on scores either, since almost every
team appears around 4-6 times.

# Assessment of Milestones

Before I start showing the milestone data, there is something to note
here. I’ve placed each milestone into it’s own category; it is either an
award or a statistic. An award is a title or physical achievement that a
player can earn over the course of their career. A statistic is a
numerical highlight that is achieved. For example, having a season with
200 or more strikeouts is a statistic, but winning a Cy Young for that
season is an award.

keep color palette the same for next smaller graph \## Milestone Scoring

![](GridRMarkdown_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

This graph shows my average score for each milestone, as well as how
many times they appeared on the grid. Although more statistics appear on
the grid as opposed to awards, it still seems like there is an even
split between how many times a given milestone will appear. In order to
make the rest of the exploration equal, I’m going to choose the five
statistics and two awards with the highest average grid scores. The five
statistics are .300+ career batting average, 200+ hits in a season, 300+
career pitching wins, 3000+ career batting hits, and 3000+ career
pitching strikeouts; the two awards are Rookie of the Year and Cy Young.

![](GridRMarkdown_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

This final graph is almost the exact same as the previous one, except it
only shows the seven milestones I had mentioned before. An obvious trend
here, unlike players, is that the number of appearances increases as the
average score decreases.

## Takeaways

Unlike teams, the number of appearances play a decently sized role when
it comes to the milestones. However, the kind of milestone also comes
into play as well. It seems as if any kind of career statistical
landmark (e.g. .300+ AVG C, 3000+ H C, 3000+ K C) poses more of a
challenge than a seasonal statistical achievement (e.g. 30+ SB S, 200+ K
S, .300+ AVG S), which is just due to the fact that seasonal
achievements happen more often than career ones do; you would have to
retire with certain landmarks for them to be considered final and
unchangeable.

Although, I did notice that the number of appearances do have more of an
effect on seasonal awards (e.g. CY, GG). These awards don’t come around
until the end of the season. A six-to-seven month time span from the end
of the last season to the middle of the next season leaves a lot of room
to forget people’s achievements. Although, if you can remember them,
they do a good amount of work in making scores better.

# Final Thoughts

The Immaculate Grid relies on historical team knowledge and skill just
as much as it relies on popularity of players, teams, and milestones.
The three teams that cause me the most problems are the Kansas City
Royals, Cleveland Guardians, and St. Louis Cardinals. These teams didn’t
win many games leading up to July of 2023, and the lack of publicity
caused me to lose interest and eventually lose track of these team’s
players. The three categories that caused me the most problems were the
200+ Hit Season, 300+ Hit Career, and the Cy Young award winners. These
categories showed up often on the grid and on top of that, don’t have
many players that achieved these feats.

This project, in my eyes, was very interesting to create. I had to put
the data into tables by hand and then be able to make the graphics in
order to find relationships. On top of that, a lot of the relationships
I expected to find didn’t really end up making much of a difference at
all. While some of these assumptions you could make on your own, it was
still pretty cool to be able to physically see the multiple
relationships that can lead to good and bad scores on this game.

As the game continues to grow (the website already has grids for more
professional sports), more and more people are going to be asking the
same questions I did. In my eyes, that’s an awesome problem to have
because it forces people to keep coming back, while also helping them
learn more about sports history in a way that’s engaging and
entertaining.
