require 'rails_helper'

RSpec.describe do 'when user visits /astronauts'
  it 'displays a list of astronauts and statistics' do
    astronaut = Astronaut.create(name: 'Neil Armstrong', age: 37, job: 'Commander')
    astronaut = Astronaut.create(name: 'Buzz Aldrin', age: 31, job: 'Co-pilot')

    visit astronauts_path

    expect(page).to have_content('Average Age: 34')

  end
end
