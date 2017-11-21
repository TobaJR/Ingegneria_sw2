class Client < ApplicationRecord
    has_many :works

    validates :email,
              format: {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i},
              uniqueness: true,
              confirmation: true
    validates_presence_of :name, :age, :email

    def total_hours
      th = 0;
     works.each do |work|
       th = th + work.hours
     end
     return th
    end


    def billed_hours
      th = 0;
     works.each do |work|
         if(work.billed == true)
           th = th + work.hours
         end
      end
     return th
    end


    def unbilled_hours
      th = 0;
     works.each do |work|
         if(work.billed == false)
           th = th + work.hours
         end
       end
     return th
    end

    def unbilled_money
      th = 0;
     works.each do |work|
         if(work.billed == false)
           th = th + work.money
         end
       end
     return th
    end

    def billed_money
      th = 0;
     works.each do |work|
         if(work.billed == true)
           th = th + work.money
         end
       end
     return th
    end



end
