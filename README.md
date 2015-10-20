# noip

[![Gem Version](https://badge.fury.io/rb/noip.svg)](http://badge.fury.io/rb/noip)
[![Build Status](https://travis-ci.org/asellitt/noip.svg?branch=master)](https://travis-ci.org/asellitt/noip)
[![Code Climate](https://codeclimate.com/github/asellitt/noip/badges/gpa.svg)](https://codeclimate.com/github/asellitt/noip)
[![Test Coverage](https://codeclimate.com/github/asellitt/noip/badges/coverage.svg)](https://codeclimate.com/github/asellitt/noip/coverage)

A simple utility for updating [noip](https://www.noip.com/integrate/request)
dynamic DNS records for when your router kinda shit.

## Usage

### Command Line Interface 

`noip` required three parameters: username, password, and host

```bash
noip update -u username -p h4h-t0tez-l3g1t -h host.to.update
```

See `noip help update` for more information

### Crontab

Here's a sample crontab entry that will schedule the update every 4 hours

```crontab
0 0,4,8,12,16,20 * * * noip update -u username -p h4h-t0tez-l3g1t -h host.to.update
```

## Contributing

1. Fork it ( https://github.com/asellitt/noip/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
