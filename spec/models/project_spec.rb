require 'rails_helper'

describe Project do
  it { should validate_presence_of :title }
  it { should validate_presence_of :tech }
  it { should validate_presence_of :description }
  it { should validate_presence_of :github }
end
