class ProjectsController < ApplicationController
  def index
    @featured = Project.all
    github = Github.new
    @recent = github.recently_updated
    @top_starred = github.top_starred
  end
end
