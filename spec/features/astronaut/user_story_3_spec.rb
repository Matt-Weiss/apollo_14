require 'rails_helper'

RSpec.describe do 'when user visits /astronauts'
  it 'displays a list of astronauts and statistics' do
    astronaut = Astronaut.create(name: 'Neil Armstrong', age: 37, job: 'Commander')
    astronaut2 = Astronaut.create(name: 'Buzz Aldrin', age: 31, job: 'Co-pilot')
    astronaut.missions.create(title: 'Apollo 13', time_in_space: 12)
    astronaut.missions.create(title: 'Gemini 7', time_in_space: 12)
    astronaut.missions.create(title: 'Capricorn 4', time_in_space: 12)
    visit astronauts_path

    expect(page).to have_content('Apollo 13 Capricorn 4 Gemini 7')

  end
end
