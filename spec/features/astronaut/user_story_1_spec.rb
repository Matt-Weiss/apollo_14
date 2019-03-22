require 'rails_helper'

RSpec.describe do 'when user visits /astronauts'
  it 'displays a list of astronauts and statistics' do
    astronaut = Astronaut.create(name: 'Neil Armstrong', age: 37, job: 'Commander')

    visit astronauts_path
    expect(page).to have_content('Name: Neil Armstrong')
    expect(page).to have_content('Age: 37')
    expect(page).to have_content('Job: Commander')
  end
end
