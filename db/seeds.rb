# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all


nyc_neighborhoods = "
Alphabet City
Battery Park City
Carnegie Hill
Chelsea
Chinatown
East Harlem
East Village
Financial District
Flatiron District
Gramercy Park
Greenwich Village
Harlem
Hell's Kitchen/Clinton
Inwood
Kips Bay
Lincoln Square
Lower East Side
Manhattan Valley
Midtown East
Midtown West
Morningside Heights
Murray Hill
NoLita/Little Italy
Roosevelt Island
SoHo
Tribeca
Upper East Side
Upper West Side
Washington Heights
West Village
Baychester/Co-op City
Bedford Park
Belmont
Bronxdale
Castle Hill
City Island
Concourse Village/Grand Concourse/Morrisania
Country Club
Fieldston
Fordham
Hunts Point
Kingsbridge
Kingsbridge Heights
Melrose
Morris Heights
Morris Park
Mott Haven
Parkchester
Pelham Bay
Pelham Gardens
Pelham Parkway
Port Morris
Riverdale
Soundview
Throgs Neck
Tremont
University Heights
Wakefield
Williamsbridge
Woodlawn
Arverne
Astoria
Bayside
Beechhurst
Belle Harbor/Neponsit
Bellerose
Briarwood
Broad Channel
Cambria Heights
College Point
Corona
Douglaston
East Elmhurst
Elmhurst
Far Rockaway
Floral Park
Flushing
Forest Hills
Fresh Meadows
Glen Oaks
Glendale
Hillcrest
Hollis
Hollis Hills
Howard Beach
Jackson Heights
Jamaica
Jamaica Estates
Jamaica Hills
Kew Gardens
Laurelton
Little Neck
Long Island City
Maspeth
Middle Village
Oakland Gardens
Ozone Park
Queens Village
Rego Park
Richmond Hill
Ridgewood
Rockaway Park
Rosedale
South Jamaica
South Ozone Park
Springfield Gardens
St. Albans
Sunnyside
Whitestone
Woodhaven
Woodside
Bath Beach
Bay Ridge
Bedford-Stuyvesant
Bensonhurst
Bergen Beach
Boerum Hill
Borough Park
Brighton Beach
Brooklyn Heights
Brownsville
Bushwick
Canarsie
Carroll Gardens
Cobble Hill
Coney Island
Crown Heights
Cypress Hills
Downtown Brooklyn
Dumbo/Vinegar Hill
Dyker Heights
East New York
Flatbush
Flatlands
Fort Greene/Clinton Hill
Gerritsen Beach
Gowanus
Gravesend
Greenpoint
Greenwood Heights
Manhattan Beach
Marine Park
Midwood
Mill Basin
Park Slope
Prospect Heights
Prospect Park South/Kensington
Red Hook
Sea Gate
Sheepshead Bay
Sunset Park
Williamsburg
Windsor Terrace
Staten Island
Annadale
Arden Heights
Arrochar
Bay Street
Bulls Head
Castleton Corners
Charleston
Clifton
Dongan Hills
Eltingville
Emerson Hill
Graniteville
Grant City
Grasmere/Concord
Great Kills
Grymes Hill
Huguenot
Livingston
Manor Heights
Mariners Harbor
Midland Beach
New Brighton
New Dorp/New Dorp Beach
New Springville
Oakwood
Pleasant Plains
Port Richmond
Prince's Bay
Richmondtown
Rosebank
Rossville
Shore Acres
Silver Lake
South Beach
St. George
Stapleton
Sunnyside
Todt Hill
Tompkinsville
Tottenville
Travis
West New Brighton
Westerleigh
Willowbrook
Woodrow".split("\n")

male_docs = [
  "https://imgur.com/SNmt9uB",
  "https://imgur.com/wYQnOVE",
  "https://imgur.com/byQ4R0I",
  "https://imgur.com/Fm5Izd9",
  "https://imgur.com/hc700mz",
  "https://imgur.com/9PjSUfc",
  "https://imgur.com/OZJ3LGS",
  "https://imgur.com/s52Na2y",
  "https://imgur.com/wGpoiTI",
  "https://imgur.com/BSj5orm"
]

female_docs = [
  "https://imgur.com/gvRFmBg",
  "https://imgur.com/KnMvTop",
  "https://imgur.com/eIbnuWz",
  "https://imgur.com/EpNiosD",
  "https://imgur.com/6vxWzfo",
  "https://imgur.com/DMJ6WFx",
  "https://imgur.com/bfAE2tE",
  "https://imgur.com/FlT54cf",
  "https://imgur.com/ACIKnUb",
  "https://imgur.com/EeeIwti"
]

psych_certifications = [
 "Child & Adolescent Psychiatry (Psychiatry and Neurology)",
 "American Board of Psychiatry and Neurology",
 "Psychiatry (Psychiatry and Neurology)",
 "Forensic Psychiatry (Psychiatry and Neurology)",
]

language_array = ['Spanish', 'Chinese', 'Russian', 'French', 'Bengali', 'Hindi', 'Arabic', 'Yiddish', 'Polish', 'Tagalog', 'Korean']

male_docs.each do |img| 
	Doctor.create(name: Faker::Name.male_first_name + " " + Faker::Name.last_name, location: nyc_neighborhoods.sample, years_experience: rand(2..6), gender: 'male', languages: ['English'] << language_array.sample, education: Faker::Educator.university, speciality: ['Psychology', 'Therapy', 'Psychiatry'].sample, img_url: img, board_certifications: [psych_certifications.sample, psych_certifications.sample] )
end

female_docs.each do |img|
	Doctor.create(name: Faker::Name.female_first_name + " " + Faker::Name.last_name, location: nyc_neighborhoods.sample, years_experience: rand(2..6), gender: 'female', languages: ['English'] << language_array.sample, education: Faker::Educator.university, speciality: ['Psychology', 'Therapy', 'Psychiatry'].sample, img_url: img, board_certifications: [psych_certifications.sample, psych_certifications.sample] )
end