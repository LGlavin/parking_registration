require 'spec_helper'

feature "user registers spot", %Q{
  As a parker
  I want to register my spot with my name
  So that the parking company can identify my car

} do
  scenario 'specifies valid information, registers spot' do
    prev_count = Registration.count
    visit '/'
    fill_in "First name", with: 'John'
    fill_in "Last name", with: 'Smith'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Spot number', with: 5
    click_button 'Register'
    expect(page).to have_content('You registered successfully')
    expect(Registration.count).to eql(prev_count + 1)
  end

end