require 'faker'

20.times do 

  notes_args = {}

  notes_args[:title] = Faker::Company.catch_phrase
  notes_args[:content] = Faker::Lorem.paragraph

  Note.create(notes_args)

end