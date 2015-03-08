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
      t.string :firewatch_name

      t.datetime :date



      t.timestamps
    end
  end
end
