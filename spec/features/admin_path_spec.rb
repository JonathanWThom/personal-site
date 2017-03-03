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

  it 'will create a project' do
    admin = create(:admin)
    login_as(admin)
    visit new_admin_project_path
    fill_in 'project_title', :with => 'admin2@admin.com'
    fill_in 'project_description', :with => 'description'
    fill_in 'project_collaborators', :with => 'collaborators'
    fill_in 'project_github', :with => 'github'
    fill_in 'project_deployed', :with => 'deployed'
    fill_in 'project_tech', :with => 'tech'
    attach_file "project_image", "spec/asset_specs/photos/leaf.jpeg"
    click_on 'Create Project'
    expect(page).to have_content 'Project was successfully created.'
  end

  it 'will create a post' do
    admin = create(:admin)
    login_as(admin)
    visit new_admin_post_path
    fill_in 'post_title', :with => 'title'
    fill_in 'post_content', :with => 'content'
    fill_in 'post_date', :with => 'date'
    click_on 'Create Post'
    expect(page).to have_content 'Post was successfully created.'
  end

end
