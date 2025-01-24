## install if needed (do this exactly once):
install.packages("usethis")

library(usethis)
use_git_config(user.name = "Anthony Griffith", 
               user.email = "griffithanthony42@gmail.com")
usethis::git_default_branch_configure()
usethis::create_github_token()
gitcreds::gitcreds_set()
gitcreds::gitcreds_get()
