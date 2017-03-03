require 'rails_helper'

describe Github do
  it 'will call starred repositories', vcr: true do
    github = Github.new
    expect(github.top_starred.length).to eq(5)
  end

  it 'will call recently update repositories', vcr: true do
    github = Github.new
    expect(github.recently_updated.length).to eq(5)
  end

  it 'will fail the api call', vcr: true do
    ## not quite sure how to do this since my call doesn't take parameters
  end
end
