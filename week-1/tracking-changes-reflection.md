How does tracking and adding changes make developers' lives easier?

Tracking and adding changes make develoers' lives easier by making it very clear what changes cause a piece of software to stop functioning as intended. Once the problem has been identified, it can easily be dealt with.

What is a commit?

A commit is basically a "save" of a line of code. Commits will make a record of exactly what the code was like at that point in time, allowing that exact code to be revisited in the future if need be.

What are the best practices for commit messages?

Commit messages should be direct, concise, and in the present tense.

What does the HEAD^ argument mean?

Using the HEAD^ argument means that you are referring to code from the previous commit, not the one you are currently working on.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages are untracked, changes not staged for commit, and changes to be commited. Untracked files are files that are completely new since the last commit. In order to move a file from untracked to changed but not staged for commit, simply change some of the text about the file. In order to stage a change for commit, simply use the code "git add [FILE NAME]"

Write a handy cheatsheet of commands you need to commit your changes.

Necessary commands for commiting change:
	git checkout -b [branch name] - to make a new branch to commit

	git status - to check what changes have been made since the last commit.
	
	git pull - to use on the local copy of the master code in order to ensure that you are using the most relevent version.

	git add [file name] in order to ready your changes for commit

	git commit -m "message" - in order to commit the change and leave a message describing what actions were taken for the commit.

What is a pull request and how do you create and merge one?

A pull request is a request made to merge code from your branch into the master code on GitHub. It is created first by using a push command to send your code to GitHub, and then using the "create a pull request" button on GitHub. From there, the user compares what changes are being made and checks the message left about the change, and then finalizes the change.

Why are pull requests preferred when working with teams?

Pull requests are preferred when working with teams because it allows the master code to be updated systematically, letting other members of the team follow how the code is being updated and allowing them to pull from the new line of master code if necessary.