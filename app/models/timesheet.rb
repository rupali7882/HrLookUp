class Timesheet < ApplicationRecord
  belongs_to :employee

  def self.import(file)
    spreadsheet = open_spreadsheet(file)
   
  end

  def self.convert_time time
  	 Time.at(time).utc.strftime("%I:%M%p")
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
      when ".csv" then Roo::Csv.new(file.path)
      when ".xls" then Roo::Excel.new(file.path)
      when ".xlsx" then Roo::Excelx.new(file.path)
      else raise "Unknown file type: #{file.original_filename}"
    end
  end 
end
