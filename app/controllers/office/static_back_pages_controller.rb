class Office::StaticBackPagesController < OfficeController
  def index
  end

  def team
    @userspm = User.where(role: "Project Manager")
    @userswd = User.where(role: "Web Designer")
    @usersbd = User.where(role: "Back-end Developer")
    @usersfd = User.where(role: "Front-end Developer")
  end
end
