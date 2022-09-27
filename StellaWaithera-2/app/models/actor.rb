class Actor < ActiveRecord::Base
  has_many :roles
  has_many :movies, through: :roles

  def total_salary
    self.roles.sum(:salary)
  end

  def blockbusters
    self.movies.where("box_office_earnings > 50000000")
  end

  def self.most_successful
    self.all.max_by{ |actor| actor.total_salary}
  end
end
