class Timesheet < ApplicationRecord


def self.import(file,emp_id)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
     timesheet = find_by_id(row["id"]) || new
     if row['In'].is_a? Integer
	     timesheet.in_time = convert_time row['In'] 
	     timesheet.out_time = convert_time row['Out'] 
	     timesheet.employee_id = emp_id 
	     timesheet.save!
     else
     	timesheet.in_time = row['In'] 
	    timesheet.save!
     end

   
  end
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
