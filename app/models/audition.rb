class Audition < ActiveRecord::Base
    belongs_to :role

    def role
      Role.select { |role| role.id == self.role_id }
    end
  
    def call_back
      self.update(hired: true)
    end
  end