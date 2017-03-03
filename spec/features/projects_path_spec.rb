require 'rails_helper'

describe 'the projects path' do
  it 'will show featured projects and other projects', vcr: true do
    create(:project)
    visit projects_path
    expect(page).to have_content 'Test Project'
  end
end
