module RedshiftCsv; class Configuration

  attr_accessor :host, :user, :password, :dbname

  def initialize(args)
    @host = args.fetch(:host, nil)
    @user = args.fetch(:user, nil)
    @password = args.fetch(:password, nil)
    @dbname = args.fetch(:dbname, nil)
  end

end; end
