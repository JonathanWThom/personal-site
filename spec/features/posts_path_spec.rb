require 'rails_helper'

describe 'the posts path' do
  it 'will show an individual post' do
    2.times do
      create(:post)
    end
    visit posts_path
    click_link 'Test Post'
    expect(page).to have_content 'Lorem Ipsum'
  end
end
