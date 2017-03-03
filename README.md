# Personal Website

A collection of blog posts, projects, and a little bit about me.

## Set Up

Well, it would be weird to clone MY website, so you might just want to visit it at (jonathanthom.com)[http://www.jonathanthom.com/]. But if really want to clone it, you could do the following:

1. Clone it.
2. ```bundle install```
3. ```rake db:setup```
4. ```touch .env```
5. Acquire and include the following in the .env file:
  * GITHUB_ACCESS_TOKEN, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_REGION, S3_BUCKET_NAME
6. Change the user parameter in services/github.rb if you so desire
7. ```rails s```

It is seeded with an admin account with the following credentials:
  * email: admin@example.com
  * password: password

## Technology

Ruby on Rails, GitHub API V3, SASS, Bootstrap 3, ActiveAdmin & Paperclip gems, among many others.

## License

MIT
