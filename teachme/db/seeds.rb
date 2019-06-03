# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  user = User.create(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: Faker::Internet.email,
          phone: Faker::PhoneNumber.phone_number,
          password: Faker::Number.hexadecimal,
          address: Faker::Address.building_number,
          city: Faker::Address.city,
          state: Faker::Address.state,
          zip_code: Faker::Address.zip_code(state_abbreviation = 'FL')
        )
end

5.times do |x|
  profile = Profile.create(
    profile_type: '',
    description: "Description #{x}",
    certifications: '',
    availability: '',
    education_level: '',
    skills: '',
    user_id: x + 1
  )
  5.times do
    lesson = Lesson.create(
      description: Faker::Lorem.sentences,
      start_time: Faker::Time.between(DateTime.now - 1, DateTime.now),
      location: Faker::Address.street_address,
      attendees_number: Faker::Number.digit,
      duration: Faker:: Time.between(DateTime.now - 1, DateTime.now),
      student_requirements: Faker::Lorem.words,
      supplied_by_teacher: Faker::Name,
      comments: Faker::Lorem.sentences,
      profile_id: profile.id
    )
    begin
      User.find(x + 1).lessons << lesson
      User.find(x + 2).lessons << lesson
    rescue
      puts " :P "
    end
  end
end



Lesson.all.each do |lesson|

  5.times do
    Review.create(
      lesson_id: lesson.id,
      user_id: User.find( User.ids.sample ),
      comments: Faker::Lorem.sentences,
      rating: Faker::Number.digit,
    )
  end
end

puts "Seed complete"
