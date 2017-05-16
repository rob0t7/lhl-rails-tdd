# Intro to TDD and Fullstack Rails Tests

Today in the lecture we covered a tdd example using rails, capybara,
rspec. We started from the business requirements  and implement two
features by working our way from the UI to the data layer.

Along the way we discussed the different layers of testings and the
testing pyramid.

![alt testing pyramid](https://jfiaffe.files.wordpress.com/2014/09/tests-pyramid.png)

We also showed how we could you the selenium-webdrive to run our
*feature* tests in an actual web browser.

## To Run the code

``` shell
./bin/rails db:setup
./bin/rails spec
```

## To Learn more

See the following:

* [Rails Guides](http://guides.rubyonrails.org/testing.html)
* [Rspec](http://rspec.info/)
*
  [How Thoughbot tests](https://robots.thoughtbot.com/how-we-test-rails-applications)
* [Capybara API](http://teamcapybara.github.io/capybara/)
