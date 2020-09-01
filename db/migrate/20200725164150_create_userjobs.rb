class CreateUserjobs < ActiveRecord::Migration[6.0]
  def change
    create_table :userjobs do |t|
      t.integer :user_id
      t.integer :job_id
      t.string :title
      t.string :company 
      t.string :status
      t.string :contact
      t.string :action
      t.string :notes
      t.string :next_step
      t.string :next_interview

      t.timestamps
    end
  end
end
