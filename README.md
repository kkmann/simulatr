
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

## Install some tools

The following assumes that you are using posit.cloud to run Rstudio.

First install a few packages.

```
install.packages("devtools")
install.packages("pkgdown")
install.packages("usethis")
```

Install the package itself

```
devtools::install()
```

We now need to set up git credentials for GitHub.com.
This requires a personal access token - the 'usethis' package
can help:
```
usethis::gh_token_help()
usethis::create_github_token()
```
This opens the corresponding page on GitHub.com and you can simply copy the
personal access token to your clipboard (default options are fine).
Then call
```
`gitcreds::gitcreds_set()`
```
and enter your token to register it.

Next, switch from the R 'Console' to the 'Terminal' tab and tell git who you are
```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```


## Find the problems

Run the package checks in the root directory by clicking on 'Check' in
the 'Build' tab of RStudio and inspect the output to find errors and warnings.


## Fix the problems

4. Divide the problems with you collaborators.
5. Each create your own branch from 'main' using the RStudio interface.
6. Start working on your problems and make a small changes.
7. Stage, commit, and push you changes to the GitHub repository.
8. Open the repository in you browser, GitHub will automatically suggest you
to open a new pull request for the branch you just pushed. Follow the instructions
to open a pull request.
9. See how the automated checks (details can be found in `.github/workflows`)
start running in the pull request tab on GitHub.
10. Continue to edit/stage/commit/push until you are happy with your work 
(not all checks need to pass unless you fix all problems at the same time!)
11. In the pull request view, invite a collaborator to review your code.
12. After you get approval, merge the pull request to integrate your changes.
13. Celebrate!

Hint: start with the file `R/f_simulate_continuous_data.R`

Hint: after editing the documentation (roxygen comments) you need to run
`devtools:document()` to update the actual `*.Rd` documentation! 


## Bonus: automatically build and deploy documentation

This is an advanced topic and can require some tinkering to get it working.
You can build the pkgdown documentation locally, using
```
pkgdown::build_site() # does not look too pretty on posit.cloud
```

To automate this with github actions, we resort to the 'usethis' package,
which is usually fairly up to date with recent changes in github actions:
```
usethis::use_pkgdown_github_pages()
```
Follow the instructions (it is OK to overwrite `_pkgdown`!).

This generates a new workflow file `.github/workflows/pkgdown.yml`. 
Open the file and add
```
permissions:
  contents: write
```
to the very top to make sure the workflow can [write to your repository](https://github.com/JamesIves/github-pages-deploy-action#getting-started-airplane).

Do not forget to stage/commit/push the changes to your 'main' branch.
After a few minutes, the documentation website should be available at 
https://yourname.github.io/reponame/.
