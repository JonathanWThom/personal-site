require 'rails_helper'

describe 'the admin path' do
  it 'will log in an admin' do
    create(:admin)
    visit new_admin_session_path
    fill_in 'admin_email', :with => 'admin@admin.com'
    fill_in 'admin_password', :with => 'password'
    click_on 'Login'
    visit admin_admins_path
    expect(page).to have_content 'admin@admin.com'
  end

  it 'will create a new admin' do
    admin = create(:admin)
    login_as(admin)
    visit new_admin_admin_path
    fill_in 'Email', :with => 'admin2@admin.com'
    fill_in 'admin_password', :with => 'password'
    fill_in 'admin_password_confirmation', :with => 'password'
    click_on 'Create Admin'
    expect(page).to have_content 'Admin was successfully created.'
  end

end
