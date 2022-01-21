# Capybara

Capybara helps you test web applications by simulating how a real user would
interact with your app. It is agnostic about the driver running your tests and
comes with Rack::Test and Selenium support built in. 

## Support Capybara

If you and/or your company find value in Capybara and would like to contribute financially to its ongoing maintenance and development, please visit
<a href="https://www.patreon.com/capybara">Patreon</a>


**Need help?** Ask on the mailing list (please do not open an issue on
GitHub): http://groups.google.com/group/ruby-capybara

## Table of contents

- [Setup](#setup)
- [Using Capybara with Cucumber](#using-capybara-with-cucumber)
- [Selenium](#selenium)

## <a name="setup"></a>Setup

Capybara requires Ruby 2.7.2 or later. To install, add this line to your
`Gemfile` and run `bundle install`:

```ruby
gem 'capybara'
ruby -v
```

If the application that you are testing is a Rails app, add this line to your test helper file:

```ruby
require 'capybara/dsl'
```
#### Select driver (Chrome)
>###### Go to base_config ruby module and set @browser variable to chrome
>````
>@browser = ENV['browser'] || 'chrome'
#### Execute your tests
>###### After downloading all libraries, the project is run.
>````
>cucumber


## <a name="using-capybara-with-cucumber"></a>Using Capybara with Cucumber

The `cucumber-rails` gem comes with Capybara support built-in. If you
are not using Rails, manually load the `allure-cucumber` module:

```ruby
require 'allure-cucumber'
```

You can use the Capybara DSL in your steps, like so:

```ruby
When /I sign in/ do
  within("#session") do
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
  end
  click_button 'Sign in'
end
```

## <a name="selenium"></a>Selenium

Capybara supports [Selenium 3.5+
(Webdriver)](https://www.seleniumhq.org/projects/webdriver/).
In order to use Selenium, you'll need to install the `selenium-webdriver` gem,
and add it to your Gemfile if you're using bundler.

Capybara pre-registers a number of named drivers that use Selenium - they are:

* :selenium                 => Selenium driving Firefox
* :selenium_headless        => Selenium driving Firefox in a headless configuration
* :selenium_chrome          => Selenium driving Chrome
* :selenium_chrome_headless => Selenium driving Chrome in a headless configuration

These should work (with relevant software installation) in a local desktop configuration but you may
need to customize them if using in a CI environment where additional options may need to be passed
to the browsers.  See the section on adding and configuring drivers.


**Note**: drivers which run the server in a different thread may not share the
same transaction as your tests, causing data not to be shared between your test
and test server, see [Transactions and database setup](#transactions-and-database-setup) below.


