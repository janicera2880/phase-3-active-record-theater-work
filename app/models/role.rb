class Role < ActiveRecord::Base
    has_many :audtions
  
    def auditions
      Audition.all.select { |audition| self.id == audition.role_id }
    end
  
    def actors
      self.auditions.map { |audition| audition.actor }
    end
  
    def locations
      self.auditions.map { |audition| audition.location }
    end
  
    def lead
      if find_hired_actors.length > 0
        return find_hired_actors[0]
      else
        "No actor has been hired for this role"
      end
    end
  
    def understudy
      if find_hired_actors.length > 1
        return find_hired_actors[1]
      else
        "No actor has been hired for this role"
      end
    end
  
    def find_hired_actors
      hired_auditions = []
      self.auditions.each do |audition|
        if audition.hired == true
          hired_auditions << audition
        end
      end
      hired_auditions
    end
  end