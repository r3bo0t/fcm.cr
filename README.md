# fcm

TODO: Write a description here

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  fcm:
    github: r3bo0t/fcm
```

## Usage

```crystal
require "fcm"

fcm_object = Fcm::Base.new("####api-token", {})
fcm_token = "#####"
message = { "notification" => { "title" => "notification title", "body" => "notification body"}, "data" => {"any_other_key" => "any other data"}}
fcm_object.send(fcm_token, message) # sending push notification for single user
tokens = ["#####", "######", "#####"]
fcm_object.bulk_send(tokens, message) # For sending push notification for multiple users
```

## Contributing

1. Fork it ( https://github.com/[your-github-name]/fcm/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[your-github-name]](https://github.com/[your-github-name]) r3bo0t - creator, maintainer
