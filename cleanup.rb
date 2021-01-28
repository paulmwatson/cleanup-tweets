require 'csv'
require 'uri'

CSV.open('tweets-out.csv', 'w') do |csv|
  CSV
    .read('tweets-in.csv')
    .each do |row|
      text = row[1]
      modified_text =
        text
          .gsub(/@/, '')
          .gsub(/#/, '')
          .gsub(URI.regexp, '')
          .split(/(?=[A-Z]{1}[a-z]{2})/)
          .join(' ')
          .gsub(/ {2,6}/, ' ')
      csv << [row[0], text, modified_text]
    end
end
