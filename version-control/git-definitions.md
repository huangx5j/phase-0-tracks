@omgmakeme "Hello!"
# Git Definitions & Answers

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is a software tool that helps developers manage changes to source over time. Any changes to the code will be kept tracked of and protected. If a mistake is made a developer can compare the current code to previous versions of the code to fix it. Version control also allows team members to work concurrently so different features can be worked on and prevent concurrent work from conflicting.

* What is a branch and why would you use one?
A branch is a pointer to a commit object. Creating a new branch will allow independent work from the master branch. If a developer wants to add a new feature or fix some code then a new branch should encapsulate those changes. Multiple branches can be worked in parallel. This prevents unstalbe code from committing to the main source code and allows developers to clean the code before merging into the main branch.

* What is a commit? What makes a good commit message?
A commit records changes to the repository like a snapshot in your history. A good commit message will: 
(1) Separate subject from body with a blank line
(2) Limit the subject line to 50 characters
(3) Capitalize the subject line
(4) Use the imperative mood in the subject line
(5) Wrap the body at 72 characters
(6) Use the body to explain what and why vs. how

This is to get developers to provide clean, short, and meaningful context to changes being made to code.When developers revisit the code they won't be confused as where to start their work.

* What is a merge conflict?
A merge conflict sometimes arises when merging or pulling from a branch. It occurs when the current branch and another branch merging into the current branch have diverged. That means there are commits in the current branch which are not in the other branch, and vice versa. To resolve the confict the developer will have to look at the conflict markers and decide what the end result should be.
