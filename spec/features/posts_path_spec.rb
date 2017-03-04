require 'rails_helper'

describe 'the posts path' do
  it 'will add a post' do
    admin = create(:admin)
    login_as(admin)
    visit new_admin_post_path
    fill_in 'post_title', :with => 'title'
    fill_in 'post_content', :with => 'content'
    fill_in 'post_date', :with => 'today'
    click_on 'Create Post'
    expect(page).to have_content 'Post was successfully created.'
  end

  it 'will show an individual post' do
    2.times do
      create(:post)
    end
    visit posts_path
    click_link 'Test Post'
    expect(page).to have_content 'Lorem Ipsum'
  end
end
