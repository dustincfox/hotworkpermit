class Permit < ActiveRecord::Base
  belongs_to :project;
  belongs_to :admin;
end
