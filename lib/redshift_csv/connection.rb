module RedshiftCsv; class Connection

  attr_reader :config

  def initialize
    @config = {
      dbname: RedshiftCsv.config.dbname,
      user: RedshiftCsv.config.user,
      password: RedshiftCsv.config.password,
      host: RedshiftCsv.config.host,
      sslmode: 'require',
      port: 5439
    }
  end

  def run(sql)
    connection.exec(sql)
  end

  private

  def connection
    PGconn.connect(@config)
  end

end; end
