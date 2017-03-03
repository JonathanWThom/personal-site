FactoryGirl.define do
  factory :project do
    title "Test Project"
    collaborators  "Bob the Builder"
    github '3/2/17'
    deployed 'deployed'
    tech 'tech'
    description 'description'
    image { fixture_file_upload(Rails.root.join('spec', 'asset_specs', 'photos', 'leaf.jpeg'), 'image/png') }
  end
end
