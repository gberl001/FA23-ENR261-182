# ENR261
This is a template repository containing the default structure and initial material for the ENR261 course at MCC.
## Create Your Repository
### Windows Users, Download Portable Git
By using portable git, you can store the program on your thumb drive and always have it available. Installing is easy:
1. Download portable git (here's the 64-bit windows version) https://github.com/git-for-windows/git/releases/download/v2.39.1.windows.1/PortableGit-2.39.1-64-bit.7z.exe
2. Run this executable and simply identify a folder on your thumb drive when prompted. Generally the base (root) folder is preferable.

### Create a Copy of the Template Repository
Now that you have git installed on your thumb drive, the next step is getting a copy of this repository. GitHub makes
that super easy with the click of a button.
1. You will have to have an account so you can set that up on [www.GitHub.com](https://github.com/)
1. Navigate to the desired repository [www.GitHub.com/gberl001/FA23-ENR261-182](https://github.com/gberl001/FA23-ENR261-182)
1. Click the green "Use this template" button in the upper right portion of the layout, and select "Create a new repository".
1. At the prompt you will be asked to give your repository a name, please name it `FA23-ENR261-182-LASTNAME` and replace the `LASTNAME` with your last name
   1. As an example, my repository would be named `FA23-ENR261-182-BERL`.
1. Finally, be sure to select `private` and then click the green "Create repository from template" button

### Add Your Instructor as a Collaborator
So that I can read your submissions and update your grade sheet, I will need to be granted access to your repository.
1. Click the Settings button toward the upper middle of the screen.
1. Under the `access` section, select `collaborators`
1. Click "Add people" and find `gberl001`, you should see the name `Geoff Berl` and a picture of me.
1. Select "Invite" and add me to the repository.

## Let's Start With a Story
If you're new to `git`, then a lot of the terminology and processes are going to be foreign so here's a short, real
world analogy on how git works. Pay attention to the words formatted like `this`

Geoff wants to write a book, he's an old soul and loves writing on a typewriter. His editor insists that she have
access to see his work as he completes it. She tells him, "Each time you finish a portion of work, just `add` the papers
to your `local` computer by scanning them, `commit` to me that you're done making changes for now, by adding those scans
to a zip file and name the zip with a small `message` like `finished intro to ch1`.zip, and upload or `push` the files
to Google Drive, so I can see them. Oh, and by the way, I may edit some of the files that you `push` so be sure to
download or `pull` the files from Google Drive, so you have the latest. You wouldn't want to go editing something I
already reviewed without seeing what I edited first right?"

Hopefully, this story helps a little, in summary, Geoff always has to check Google Drive for updates first by `pull`ing.
Then type up any of his new work, `add` them to his computer `commit` them with a `message` and `push` them up to Google
Drive.

## Using Your Repository Locally
At this point, all of your files are stored on Github. In order to work on your files, you need to `clone` the code
from Github onto your local computer (or thumb drive). Cloning can be thought of as downloading or copying but this is
only done once. Imaging Geoff the writer's computer broke or he is using a different computer, he doesn't have any of
the content on the computer, so, he has to initially download everything that exists just that one time to start with.
In the future, he can just pull or download the new or changed files.

### Make a Local Clone
Unless you bring your cloned repository with you, such as on a flash drive, you will need to repeat this process on any
new computer you use, in order to get access to your files to make changes.
1. Navigate to the folder where you extracted portable git.
1. Run the following program **git-bash.exe**
1. Run the following command (changing `YOUR_USERNAME` to your github username and update `LASTNAME` with your last name)

       git clone https://github.com/YOUR_USERNAME/FA23-ENR261-182-LASTNAME.git

1. You will be prompted to use an "authentication manager", accept the default and log into your Github account when prompted.
1. You will see some information printed to the screen as the repository is cloned.
1. After the process finishes, you should see a folder in that same portable git folder with the name of your repository
   as the folder name. This folder contains all the files from your Github "remote" repository and this folder is referred
   to as your "local" repository. Going forward, to use git on this local repository, after you run git-bash you'll have to
   navigate into this folder by running the following command (again, replace `LASTNAME`).

       cd FA23-ENR261-182-LASTNAME

**Tip:** You can type in the first part of the folder name like `FA23` and hit the `<tab>` key to have it autocomplete, for example:
```shell
cd FA23<tab>
```
This **c**hanges **d**irectory to the directory after `cd `. Once you do this you should see the text `(main)` at the
end of your git-bash prompt which tells you that this is a repository, and you are on the `main` branch. We won't worry
about branches so that's as far as we'll go on that topic unless of course you care to learn more.

## How To (git); _With Git Bash_
### Standard flow
The standard flow we will use for git is to **pull**, **add**, **commit**, and **push**
* **pull** will update your local repository with any changes from remote (like if I update your grades sheet)
* **add** after you make changes, you will want to add any new files that git doesn't know about (it only tracks files you tell it to)
* **commit** will save your work, now git will keep a history of any changes made such as files deleted, added, or changed.
* **push** will update your remote repository, this will update github with all the changes you made on your computer.

First and foremost, you should always be sure you have the latest files downloaded from your remote repository. If you
made changes on a different computer or someone else made changes, this command will download any new changes that you
don't have locally. For example, when your instructor updates your grade book, `git pull` will update your local copy
with those changes.

**WARNING** If you do not pull before making changes, you can severely confuse git and cause headaches for yourself,
ALWAYS pull before doing any work.
```shell
git pull origin main
```

Git doesn't track changes for files unless you add them to git so your first step is to add files to git.
Generally, you wouldn't always add _all_ files but since this isn't a class on git, it's easier for you to simply add
all files.
```shell
git add --all
```

Your next step is to tell git that you are done making changes (this is similar to saving a document you are working on).
```shell
git commit -m "Add some message here such as... Finished homework for Ch01, started homework for Ch02"
```

Now we want to make our files available in our remote repository (GitHub.com) so we `push` them up.
You don't necessarily need the `origin main` as that will be the default but it's a good idea to use it just to be clear.
The terminology for this just means we want to push to the `main` branch on `origin` where `origin` means the original
content up on GitHub.
```shell
git push origin main
```

## Checking status and a real world example
Let's say I cloned my repo, edited a file and added a new file. Let's also say I don't remember if I updated github.com
with those changes. Any time you want to see what has changed you can use the command `git status`. As an example,
here's what the result looks like for me after I've added a new file and changed some text in this README.
```shell
> git status
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   README.md

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	test.txt

no changes added to commit (use "git add" and/or "git commit -a")
```
### Analyzing the `git status` message
#### Changes not staged for commit
In this section, it's stating that it already knows about `README.md` but it's been modified. So, I'll need to `git add`
those modifications to git before I can `git commit` and then `git push` them to my repository.

#### Untracked files
In this section, git is telling me I have new files that git doesn't know about, sometimes these are files you don't
want git to track like temporary saves or a file you created by mistake but in any case, any files git is not tracking
changes for will show in this section. You can see git is trying to tell me what to do in each scenario
`git add <file>...` for either modifications or new files, as well as a `git restore <file>...` to undo any changes and
restore the file. If you want to remove a file from git or remove an untracked file, just simply delete it. If you just
want to undo changes, `git restore` it.

### Analyzing `git status` after `git add`
Now let's add all files and see what `git status` looks like. Recall that I mentioned you _usually_ would not add _all_.
Usually you would specify only the files you want changed but since this isn't a class on git, I recommend you simply
add all files and I'll just ignore unrelated files.
```shell
> git add --all
> git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	modified:   README.md
	new file:   test.txt
```
#### Changes to be committed
Here we can easily see that git is now tracking modifications made to `README.md` and I have a new file `test.txt`

git is also telling me that I can remove a file, for example, if I don't actually want to push `test.txt`, I can
`git restore --staged <file>...` to remove it. Notice we now have to supply `--staged` to specify we're removing
something we've `git add`ed. I'll remove `test.txt` as I don't actually want to push that file.

### Analyzing `git status` after `git add`
So, I've `removed test.txt` and I'm ready to commit my changes. Generally you'd commit once you have reached a
mini-milestone like "finished Tutorials 1-3" but I'd recommend you simply add and commit all files at all times so you
don't lose any work. I'll go ahead and `git commit` and let's check out the message.
```shell
> git commit -m "Added an example to the readme"
[main 0d73e3e] Added an example to the readme
 1 file changed, 99 insertions(+), 32 deletion(-)

> git status
On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
```
#### Reading the results
Recall that you need to provide a message by using `-m "some message here"` which I did above. Now the results of the
command show my message and summarizes that I have 1 file changed (that's the `README.md` file), I have 51 insertions
and 1 deletion. This is just saying that it found 99 new lines and 32 removed lines in `README.md` but it's not really
important to understand that.

Running `git status` afterward shows my branch is "...ahead of 'origin/main' by 1 commit." This means I have a commit
locally that isn't on the remote github repository (origin/main). And again, git is nice and helps us out by telling me
to use `git push` to publish my local commits. This will push my changes up to github.

### Analyzing `git status` after `git push`
```shell
> git push
fatal: The current branch main has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin main

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.
```
#### Uh oh
Looks like we have an error. This is no big deal, this will happen during your first push and git is telling you exactly 
what to do to fix it, we simply have to run `git push --set-upstream origin main`. What this is doing, is telling git 
that our remote repository `origin/main` is the matching content for this local repository. After running this one-time 
command, future pushes will be done with simply using `git push`. Alternatively, as in the instructions above, we could 
specify where the content needs to go by using `git push origin main`.

#### Try again
Again, we can either use `git push origin main` or run `git push --set-upstream origin main` once and then use 
`git push` for any pushes after that.
```shell
> git push --set-upstream origin main
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 10 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 2.35 KiB | 2.35 MiB/s, done.
Total 3 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To personal_github.com:gberl001/FA23-ENR261-182.git
   94c9f84..0d055de  main -> main

> git status
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```
And voila, this is the message you should see to confirm you have no changes locally that are not in your remote 
repository (origin/main) so at this point you can close the computer and move to another computer, delete the files, 
etc. But until you're comfortable, you should probably check your repository on github.com to make sure you see the 
changes.

## Got Questions?
Feel free to head on over to the [Discussions](https://github.com/gberl001/FA23-ENR261-182/discussions) to see what
others have asked or ask a question yourself.
