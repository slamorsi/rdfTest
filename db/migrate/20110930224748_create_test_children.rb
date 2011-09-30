class CreateTestChildren < ActiveRecord::Migration
  def change
    create_table :test_children do |t|
      t.integer :test_id

      t.timestamps
    end
  end
end
