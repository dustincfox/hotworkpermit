class Permit < ActiveRecord::Base
  belongs_to :project;
  belongs_to :admin;

  extend Enumerize

  enumerize :sec1_q6, :sec1_q8, :sec1_q9, :sec1_q10, :sec1_q12, :sec1_q13, in: [:yes, :no, :na]
  enumerize :status, in: [:draft, :open, :work_completed, :ready_to_inspect, :not_approved, :in_dispute, :closed]
end
