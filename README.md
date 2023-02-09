
# simulatr: Generator for Reproducible Fake Data

This repository contains the model solution of *simulatr*,
an example package for learning about software development best-practices for R packages.

## Get the repository for yourself

To get your very own version of this repository as if you had created it yourself,
use the green 'Use this template' button in the top right section of the repository.
This copies a clean version of the repository to your account.

## Invite collaborators

To allow others to make changes to your repository easily, invite them
as collaborators via the 'Settings' tab (top right).
Under 'Collaborators' you can add others via their GitHub handles.
Make sure your collaborators have 'write' access

## Clone the repository into your workspace

In Rstudio, create a new project and select 'Version Control', then 'git'.
Enter `https://github.com/[your-github-username]/[repository-name].git` as 
repository URL and continue.
This will 'clone' (download) the repository to your working directory.
RStudio automatically sets up the communication with GitHub and the most
common command (pull/push/commit) are available in the 'Git' tab within 
GitHub.

If you are a collaborator on someone elses project the same URL works for
your too!

## Fix the problems and 

1. Make sure that the devtools and pkgdown packages are installed
```
install.packages("devtools")
install.packages("pkgdown")
```
2. To build the documentation locally, use
```
pkgdown::build_site()
```
3. Run the package checks in the root directory by calling and inspect the output to find errors and warnigns.
```
devtools::check()
```
4. Divide the problems with you collaborators.
5. Each create your own branch from main using the RStudio interface.
6. Start working on your problems and make a small change.
7. Stage, commit, and push you changes to the GitHub repository
8. Open the repository in you browser, GitHub will automatically suggest you
to open a new pull request for the branch you just pushed. Follow the instructions
to open a pull request.
9. See how the automated checks (details can be found in `.github/workflows`)
start running!
10. Continue to edit/stage/commit/push until you are happy with your work (not all checks need to pass unless you fix all problems at the same time!)
11. In the pull request view, invite a collaborator to review your code
12. After you get approval, merge the pull request to integrate your changes.
13. Celebrate!

Hint: start with the file `R/f_simulate_continuous_data.R`

Hint: after editing the documentation (roxygen comments) you need to run
`devtools:document()` to update the actual `*.Rd` documentation! 
