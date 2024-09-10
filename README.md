[![Gem Version](https://badge.fury.io/rb/voyageai-ruby.svg)](https://rubygems.org/gems/voyageai-ruby)
[![Build](https://github.com/mculp/voyageai-ruby/workflows/Build/badge.svg)](https://github.com/mculp/voyageai-ruby/actions)

# VoyageAI Ruby

Ruby wrapper for the VoyageAI API.

## Installation

Adding to a gem:

```ruby
Gem::Specification.new do |spec|
  # ...
  spec.add_dependency "voyageai-ruby"
  # ...
end
```

Or adding to your project:

```ruby
# Gemfile
gem "voyageai-ruby"
```

### Supported Ruby versions

- Ruby (MRI) >= 2.7.0

## Usage

First, require the gem in your Ruby file:

```ruby
require "voyageai-ruby"
```

Then, configure the VoyageAI client with your API key:

```ruby
VoyageAI.configure do |config|
  config.api_key = "your_api_key_here"
end
```

Now you can use the VoyageAI client to interact with the API. For example:

```ruby
# Example usage (replace with actual VoyageAI API methods)
response = VoyageAI::Client.new.create_embedding("Your text here")
puts response
```

For more detailed information on available methods and their usage, please refer to the [VoyageAI API documentation](https://docs.voyageai.com/).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/mculp/voyageai-ruby](https://github.com/mculp/voyageai-ruby).

## Credits

This gem is generated via [`newgem` template](https://github.com/palkan/newgem) by [@palkan](https://github.com/palkan).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
