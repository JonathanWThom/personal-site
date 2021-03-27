class ProjectsController < ApplicationController
  def index
    github = Github.new('jonathanwthom')
    @recent = github.recently_updated
  end
end
