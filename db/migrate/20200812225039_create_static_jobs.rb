class CreateStaticJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :static_jobs do |t|
      t.integer :api_id
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
