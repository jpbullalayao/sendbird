# SendBird

Ruby wrapper for the SendBird Platform API, built by avid SendBird users!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sendbird'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sendbird

## Usage

```ruby
SendBird.configuration.api_key = "..."

# Create a user
SendBird::User.create(user_id: 'User 1', nickname: 'First SendBird User', profile_url: nil)

# Retrieve a user 
user = SendBird::User.retrieve('User 1')

# Update a user 
user.nickname = 'New Nickname'
user.save
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sendbird/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
