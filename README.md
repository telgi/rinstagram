# Rinstagram

A social network application where users post photos and see other posted photos via a shared newsfeed.

## Installation

`git clone path-to-your-repo`

`bundle install`

## Usage

`bin/rails server`

Navigate to `http://localhost:3000/`

## Running tests

For feature tests, tested with Capybara:

`rspec spec/features`

## User Stories

### MVP

```
As a user,
I want to post pictures of my life,
So that my friends and family can see what I am up to.
```

### Version 2.0

```
As a user,
I want my friends and family to be able to comment on my pictures,
So that we can communicate about my picture.

As a user,
I want my friends and family to be able to 'like' my pictures,
So that I can get a sense of how popular my picture is.

```

## Features

### MVP

1) User:

  * User can sign up
  * User can login
  * User can logout

2) Post:

  * Post has a caption
  * Post has a picture
  * Post belongs to User / User has many posts
  * User can see their own posts
  * User can edit their own posts
  * User can delete their own posts
  * User can see all posts from other users

### Version 2.0

3) Comment:

  * Comment has a text area
  * Comment belongs to Post / Post has many comments
  * User can comment on posts from other users
  * User can see their own comments
  * User can edit their own comments
  * User can delete their own comments

4) Like:

  * Like has a boolean data type
  * Like belongs to Post
  * User can like posts from other users
  * User can unlike posts that they have previously liked
