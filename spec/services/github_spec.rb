require 'rails_helper'

describe Github do
  it 'will call starred repositories', vcr: true do
    github = Github.new('jonathanwthom')
    expect(github.top_starred.length).to eq(5)
  end

  it 'will call recently update repositories', vcr: true do
    github = Github.new('jonathanwthom')
    expect(github.recently_updated.length).to eq(5)
  end

  it 'will fail the api call for recently updated', vcr: true do
    github = Github.new('random bad string')
    expect(github.top_starred).to eq([])
  end


end
