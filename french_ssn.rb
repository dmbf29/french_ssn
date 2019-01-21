require 'date'
require 'yaml'
PATTERN = /^(?<gender>[12])\s*(?<year>\d{2})\s*(?<month>[01][0-9])\s*(?<department>\d{2})\s*(?<random>\d{3}\s*\d{3})\s*(?<key>\d{2})/

def french_ssn(ssn)
# return "" if
# use match on ssn
  match_data = ssn.match(PATTERN)
  return "The number is invalid" unless match_data
# create a sentence with each group
  gender = match_data[:gender] == "1" ? "man" : "woman"

  year = "19#{match_data[:year]}"

  month = Date::MONTHNAMES[match_data[:month].to_i]

  departments = YAML.load_file('data/french_departments.yml')
  department = departments[match_data[:department]]
   "a #{gender}, born in #{month}, #{year} in #{department}."


end

