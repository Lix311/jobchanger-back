class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :location
      t.string :title
      t.string :logo
      t.string :description
      t.string :date
      t.timestamps
    end
  end
end
