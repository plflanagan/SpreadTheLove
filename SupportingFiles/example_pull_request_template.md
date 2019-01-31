<Feel free to use this as your pull request template, or make any updates you'd like. You will want to save yours in this directory as 'pull_request_template.md'. 'pull_request_template.md' is ignored from git; so you also don't need to worry about your version affecting the repo if you do any pull requests on it. At the very least, you'll probably want to delete this first message and only keep everything below for your pull request template.>

<This is a template for Pull Requests to help standardize our pull requests and make sure that they contain all the information we would like. Note that anything in carrots can be deleted, and is for explanation for how to fill out the template>

<Before we get to you filling out the template, let's put everything into perspective. This PR template is to help get all the information included here for the innocent bystander. You've completed the task; you've fixed the bug; you've added the feature. To accomplish this, you've had to come to understand the codebase. Everything in this PR now seems obvious to you -- but it actually isn't for anyone else; nor will it be obvious to you when you come back to this in 6 months. So this may feel tedious but it's actually really valuable! Okay. Let's begin>

### <Title of Pull Request> 
<Should be something like "IOS-123 - Title", where title is either the name of the task or something briefer yet still explanatory.>

### Jira Ticket
<Adjust the ticket below to match the ticket>
[IOS-123- Fix the bug](https://website/IOS-123)

### Purpose
<Please put the purpose of the Pull Request here. This often will be similar to the Jira ticket; so you don't need to go into too much detail since it is linked above. But it should be clear enough that I shouldn't have to read the Jira ticket in order to know what this work is about.>

### What this PR Accomplishes
<How did you solve the problem? State this as if it were the message to a commit that describes all the work in the PR. As a very rough guide, the number of sentences here should be around the same number as the number of commits. 3 commits; 3 sentences. 10 commits; 10 sentences. This is not to say that you should write a sentence per commit -- the commit history already does that. The main point, though, is that you should make sure that this message is detailed enough actually to indicate the work you did. It could be that the 3 commits can be explained well with one sentence, or maybe 7 -- the point is to make sure that you are being detailed enough and thinking about sentences per commit can help you do that.>

<Before you squash merge, replace the commit message with the text you put in this section. It will make for great communicative commit history. (This is why you should write this section as if it were a commit message describing all your work -- because it soon will be!>


### Screenshots/GIFS
#### Before
<It can be helpful to post screenshots or gifs of what was happening or what things looked like before the changes. Being able to contrast in this way can help make the code-changes clearer.>

#### After
<Part of the point of the PR description is to enable quicker review of PRs, thus speeding up the development process. A very important thing that the writer can do is to provide screenshots of anything in the UI that is updated in this work.>
<GIFs are a very important inclusion if there is every anything animation-related, or if there is a sequence of steps to show the effects of the update. If you don't have a script to do this locally, https://ezgif.com/video-to-gif is a great site to use, as it gives you control over the FPS -- ideal for making sure your gif doesn't drag on and that the reviewer can quickly get a sense of what is going on.>
