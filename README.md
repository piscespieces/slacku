# Slacku

### Gem under development 🚧

Slack messages and file uploads API wrapper

### Installation

This gem is NOT published to Ruby gems yet. But its intended to be used like this once distributed through [RubyGems.com](rubygems.com)

```ruby
gem "slacku"
```

and then, execute

```bash
bundle
```

```ruby
client = Slacku::Api::Client.new("YOUR-ACCESS-TOKEN")
```

or

```ruby
# config/initializers/slacku.rb

Slacku.configure do |config|
  config.access_token = "YOUR-ACCESS-TOKEN"
end
```

### Getting Started

This is how you post a simple text message to a Slack channel

```ruby
params = { channel: "slack-channel-name", text: "howdy!" }
Slacku::Api::Messages.new.post_message(params)
```

🚧🚧🚧👷🏾‍♂️👷🏾‍♂️👷🏾‍♂️
