class ProjectsController < ApplicationController
  def index
    github = Github.new('jonathanwthom')
    @recent = github.recently_updated
    @top_starred = github.top_starred
  end
end
