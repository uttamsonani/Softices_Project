# frozen_string_literal: true

# THIS FOR GET FULL PATH

# path = File.expand_path('bootstarp2')
# p path

class GetFile
  def initialize
    @file_name = gets.chomp
  end

  def fileName
    if Dir.exist?(@file_name)
      dir = Dir.entries(@file_name.to_s).each do |file|
        puts file
      end
    else
      puts 'Unable to open file!'
    end
  end
end

getFiles = GetFile.new
getFiles.fileName
