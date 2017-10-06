# Recommendation Bot

This is a Reddit bot written for /u/Razzafrachen. By default, the bot monitors /r/Bourbon, /r/Scotch and /r/Whiskey for submissions that ask for suggestions for what whisky to buy.
It does so by comparing the title and text of a submission to a list of keywords. If any of the keywords appear in them, it replies a premade message tailored for that subreddit.

The keywords and replies are stored in `recommendationbot/data/`. Each reply is stored in `{subreddit}.md` where `{subreddit}` is the name of the subreddit in lowercase. In `all.md` is the reply the bot will send if it replies in any other subreddit.

## Installation
The bot is written in Ruby. All the dependencies can be installed via bundler using the Gemfile.
There are a few keys that need to be passed via environment variables. You can either set them in the `config/<environment>.env` or pass them on the command line.
`config/.env` contains all the required configuration keys.
