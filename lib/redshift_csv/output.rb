module RedshiftCsv; class Output;

  attr_reader :query, :file_path

  def initialize(query, file_path)
    @query = query
    @file_path = file_path
  end

  def escaped_query
    query.gsub("'", "\\\\'")
  end

  def query_results
    @query_results ||= Connection.new.run(escaped_query)
  end

  def header
    query_results.first.keys
  end

  def generate_csv
    CSV.open(file_path, "wb") do |csv|
      csv << header

      query_results.each do |result|
        csv << result.values
      end
    end
  end

end; end
