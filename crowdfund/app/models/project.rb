class Project < ActiveRecord::Base
  
 has_many :pledges, dependent: :destroy

 validates :name, :website, presence: true

  def pledging_expired?
    pledging_ends_on < Date.today
  end


  def self.accepting_pledges
    where("pledging_ends_on >=?", Time.now).order("pledging_ends_on asc")
  end
end
