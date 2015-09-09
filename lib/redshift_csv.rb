require "redshift_csv/version"
require "pg"
require 'csv'

root_directory = File.expand_path("../", File.dirname(__FILE__))

Dir["#{root_directory}/lib/redshift_csv/*.rb"].sort.each {|file| require file }

module RedshiftCsv

  def self.config(args={})
    @config ||= Configuration.new(args)
  end

end

