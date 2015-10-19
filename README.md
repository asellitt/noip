# noip

A simple utility for updating [noip](https://www.noip.com/integrate/request)
dynamic DNS records for when your router kinda shit.

## Usage

You will need to provide your credentials and host to update as environment variables:

```
NOIP_HOST=host.to.update NOIP_USERNAME=username NOIP_PASSWORD=h4h-t0tez-l3g1t bundle exec rake noip:update
```

## Contributing

1. Fork it ( https://github.com/asellitt/noip/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
