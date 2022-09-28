class StaticPagesController < ApplicationController
  def index
  end

  def careers
  end

  def team
    @userspm = User.where(role: "Project Manager")
    @userswd = User.where(role: "Web Designer")
    @usersbd = User.where(role: "Back-end Developer")
    @usersfd = User.where(role: "Front-end Developer")
  end
end
