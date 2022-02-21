# Repository Search
> This is a simple web application to display public repositories from GitHub based on search term provided.

> Live demo [_here_](http://localhost:3000/). (Production url be updated later :-))

## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Screenshots](#screenshots)
* [Setup](#setup)
* [Usage](#usage)
* [Room for Improvement](#room-for-improvement)
* [Acknowledgements](#acknowledgements)
* [Contact](#contact)


## General Information
Basic request flow 
HTTP Request <-> Controller <-> Service <-> Third Party APIs(lib folder)

- Project Scope
-- User should be able to search public repositories in Github.
Example if user searches for`ruby` it will return repositories that have "ruby" in the repository name.
- [Code Coverage](http://127.0.0.1:5500/coverage/index.html#_AllFiles) - **100%** 

## Technologies Used
- Ruby - 2.7.0
- Rails - 6.1.4

List of Gems
- [octokit](https://github.com/octokit/octokit.rb)
- rspec
- brakeman  
- bundler-audit  
- fasterer  
- overcommit  
- rails_best_practices  
- rubocop


## Features
- Search for public repositories in Github.

## Setup

**Step 1:**
Clone the project from [repo](https://github.com/jishnu2003/repo-search)

**Step 2:** 
_Preferred Approach_:
The simplest way to run the project would be user docker/docker-compose.
To start the application `docker-compose up`
Note: To install docker/compose please refer [link](https://docs.docker.com/engine/install/)

_Alternative Approach_:
Install the required ruby/rails version by looking into gem file. [Link](https://gorails.com/setup/osx/11-big-sur#rails)
Run the command `bundle install`
To start the application: `rails s`

**Step 3**
Open [Application Link](http://localhost:3000/) in your browser.

## Usage
**Running test cases**
Using docker-compose `docker-compose -f docker-compose.test.yml up`

Without docker: `rspec spec` Note: Assuming all dependcies are installed through `bundle install` command.

## Room for Improvement
- Introduce a handler layer to sit between controller and services, so that controller will be thin and it's responsibility would be just to forward request to handler and handler will take care of the logic to call multiple services/cache(if required). With this approach all services classes can strictly follow **Single Responsibilty Principle**.
- Pagination approach([option1](https://github.com/octokit/octokit.rb#pagination), [option2](https://github.com/kaminari/kaminari#paginating-a-generic-array-object))
- Move from REST to [GraphQL API]((https://docs.github.com/en/graphql/overview/about-the-graphql-api)) for better query flexibility.


## References
- [Service Objects](https://www.honeybadger.io/blog/refactor-ruby-rails-service-object).
- [Libraries](https://docs.github.com/en/rest/overview/libraries)
- [Github Search](https://docs.github.com/en/search-github/searching-on-github/searching-for-repositories#search-by-repository-name-description-or-contents-of-the-readme-file)


## Contact
Created by [jishnu2003@gmail.com](https://jishnu2003.github.io/) - feel free to contact me!