require 'fileutils'
require 'json'

FileUtils.mkdir_p('stored_data')

base = "#{Dir.pwd}/stored_data"

File.open("#{base}/books.json", "w") unless File.exist?("#{base}/books.json")