# RedshiftCsv

A gem to output redshift queries to csv.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'redshift_csv'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install redshift_csv

## Usage

```ruby
RedshiftCsv.config(
  host: 'cluster_name.top_secret.us-east-1.redshift.amazonaws.com',
  user: "username",
  password: "some_password",
  dbname: 'db_name'
)

query = "select * from some_table;"

output_path = "#{Dir.pwd}/output.csv"

output = RedshiftCsv::Output.new(query, output_path)
output.generate_csv
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chickenriceplatter/redshift_csv.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

