class Contact < ActiveRecord::Base
  validates :email, { presence: true }

  def full_name
    self.first_name + " " + self.last_name
  end


  def self.all_contacts
    self.all.pluck(:first_name, :last_name).to_s
  end
end
