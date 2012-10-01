class Diaferiado < ActiveRecord::Base
  attr_accessible :dectription, :fecha
  belongs_to :user
end
