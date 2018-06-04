# Welcome to Ken's TV App!

Ken's TV App is a Ruby on Rails app powered by bootstrap. This web app is a challenge for my software engineering course at bloc. The challenge is to build an app that uses The Movie DB's API to allow users to see popular shows, search for them and get the details of the particular show. Listed Below are the requirements:

### Functional Requirements

**1.**  When first loaded, there should be a list of  [popular TV shows](https://developers.themoviedb.org/3/discover/tv-discover)and a search bar.  
**2.**  Upon  [searching](https://developers.themoviedb.org/3/search/search-tv-shows)  for a TV show in the search bar, the user should see a list of shows whose title matches the search.  
**3.**  After clicking on a  [TV show](https://developers.themoviedb.org/3/tv), the user should be taken to a page with more information about that particular TV show.

### Technical Requirements

-   Create a full-stack application with a backend that communicates with the movie API.
-   The front-end should be intuitive to use.
-   Accompany your code with a full test suite.
-   Deploy your site to a web host (e.g. on Amazon EC2, Heroku, Netlify, Google AppEngine, etc.).


# Tech Stack and reasons I picked them.

## Ruby on Rails

This project was built using Ruby, version 2.4.0, along with Rails, version 5.1.5. For Ruby installation or update, please see the following documentation: https://github.com/postmodern/ruby-install. For Rails installation, please follow this guide: http://installrails.com. For Rails update, please see: http://edgeguides.rubyonrails.org/upgrading_ruby_on_rails.html.

There are many reasons that I chose ruby on rails. The first one is the MVC design pattern of rails. commonly used for developing software that divides an application into three interconnected parts. This is done to separate internal representations of information from the ways information is presented to and accepted from the user. The MVC design pattern decouples these major components allowing for efficient code reuse and parallel development. Even though the model didn't interact with a database it still made sense to me to use this framework. Instead of an Active Record table we used the data from the response of the API endpoints. I created a model class to access the information in an array as I would with an Active Record query.

HTTParty is a rails gem that simplifies an API request.  It includes the CLI executable command `httparty` which can be used to query web services and examine the resulting output. By default it will output the response as a pretty-printed Ruby object (useful for grokking the structure of output). https://github.com/jnunemaker/httparty

Rspec testing a another reason why I picked rails. RSpec is a Behaviour-Driven Development tool for Ruby programmers. BDD is an approach to software development that combines Test-Driven Development, Domain Driven Design, and Acceptance Test-Driven Planning. RSpec helps you do the TDD part of that equation, focusing on the documentation and design aspects of TDD.
https://github.com/rspec/rspec

## Bootstrap

I used bootstrap because I like to build responsive, mobile-first projects on the web with the world's most popular front-end component library.

Bootstrap is an open source toolkit for developing with HTML, CSS, and JS. I can quickly prototype your ideas or build your entire app with their Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful plugins built on jQuery.


# Navigating the App

- The Logo: Clicking the logo will link to the home page (index view)
- Home: Clicking the logo will link to the home page (index view)
- Search: Allows searching for TV shows
- About: Points to the About page

## Next Steps

Some things I would like to add in the future:

-   Attach reviews to each show.
-   When a user searches an actor or actress, display their biography first.

## I hope you enjoy the app. Here is a link to the live site:


