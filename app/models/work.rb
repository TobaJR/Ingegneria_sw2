class Work < ApplicationRecord
  belongs_to :client
  validates_presence_of :note, :hours

end
