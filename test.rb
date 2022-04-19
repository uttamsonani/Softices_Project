# frozen_string_literal: true

class GetFile
  def initialize
    @file_name = gets.chomp
  end

  def fileName
    if Dir.exist?(@file_name)
      dir = Dir.entries(@file_name).sort.each do |file|
        puts file
      end
    else
      puts 'Unable to open file!'
    end
  end
end

getFiles = GetFile.new
getFiles.fileName
