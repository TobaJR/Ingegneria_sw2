class Invoice < ApplicationRecord
     belongs_to :works

     validates :IDclient,
               presence: true
     validates_presence_of :total_hours, :total_money, :date
end
