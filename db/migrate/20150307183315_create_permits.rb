class CreatePermits < ActiveRecord::Migration
  def change
    create_table :permits do |t|
      t.boolean :sec1_q1
      t.boolean :sec1_q2
      t.boolean :sec1_q3
      t.boolean :sec1_q4
      t.boolean :sec1_q5
      t.string :sec1_q6
      t.boolean :sec1_q7
      t.string :sec1_q8
      t.string :sec1_q9
      t.string :sec1_q10
      t.boolean :sec1_q11
      t.string :sec1_q12
      t.string :sec1_q13
      t.boolean :sec1_q14
      t.string :firewatch_sign_start

      t.references :project
      t.string :location
      t.string :building
      t.integer :floor
      t.text :task
      t.string :company
      t.string :subcontractor_name



      t.datetime :issued
      t.datetime :expires
      t.references :admin
      t.text :comments


      t.boolean :sec3_q1
      t.boolean :sec3_q2
      t.datetime :sec3_date
      t.string :subcontractor_sign
      t.string :firewatch_sign_end



      t.timestamps
    end
  end
end
