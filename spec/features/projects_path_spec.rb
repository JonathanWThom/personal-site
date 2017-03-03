require 'rails_helper'

describe 'the projects path' do
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
    expect(page).to have_content "Project was successfully created."
  end

  it 'will show featured projects and other projects', vcr: true do
    create(:project)
    visit projects_path
    expect(page).to have_content 'Test Project'
  end
end
