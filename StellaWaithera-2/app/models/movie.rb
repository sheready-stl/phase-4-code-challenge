class Movie < ActiveRecord::Base
  has_many :roles
  has_many :actors, through: :roles

  def cast_role(actor, character_name, salary)
    Role.create(salary: salary, character_name: character_name, actor: actor, movie: self)
  end

  def all_credits
    self.roles.map do |role|
      role.credit
    end
  end

  def fire_actor(actor)
    self.actors.delete(actor)
  end
end
