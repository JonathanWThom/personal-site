# Personal Website

A collection of blog posts, projects, and a little bit about me.

## Set Up

Well, it would be weird to clone MY website, so you might just want to visit it at (jonathanthom.com)[http://www.jonathanthom.com/]. But if really want to clone it, you could do the following:

1. Clone it.
2. ```bundle install```
3. ```postgres```
4. ```rake db:setup```
5. ```touch .env```
6. Acquire and include the following in the .env file:
  * GITHUB_ACCESS_TOKEN, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_REGION, S3_BUCKET_NAME
7. Change the user parameter in services/github.rb if you so desire
8. ```rails s```

It is seeded with an admin account with the following credentials:
  * email: admin@example.com
  * password: password

## Technology

Ruby on Rails, GitHub API V3, SASS, Bootstrap 3, ActiveAdmin & Paperclip gems, among many others.

## License

MIT
