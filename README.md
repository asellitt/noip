# noip

[![Gem Version](https://badge.fury.io/rb/noip.svg)](http://badge.fury.io/rb/noip)
[![Build Status](https://travis-ci.org/asellitt/noip.svg?branch=master)](https://travis-ci.org/asellitt/noip)
[![Code Climate](https://codeclimate.com/github/asellitt/noip/badges/gpa.svg)](https://codeclimate.com/github/asellitt/noip)

A simple utility for updating [noip](https://www.noip.com/integrate/request)
dynamic DNS records for when your router kinda shit.

## Usage

### Command Line Interface 

You will need to provide your credentials and host to update as environment variables:

```bash
NOIP_HOST=host.to.update NOIP_USERNAME=username NOIP_PASSWORD=h4h-t0tez-l3g1t noip
```

### Crontab

As before, environment variables will need to be provided, here's a sample crontab that will run every 4 hours:

```crontab
0 0,4,8,12,16,20 * * * NOIP_HOST=host.to.update NOIP_USERNAME=username NOIP_PASSWORD=h4h-t0tez-l3g1t noip
```

## Contributing

1. Fork it ( https://github.com/asellitt/noip/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
