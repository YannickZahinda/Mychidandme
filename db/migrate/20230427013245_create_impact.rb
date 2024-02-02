class CreateImpact < ActiveRecord::Migration[7.0]
  def change
    create_table :impacts do |t|
      t.integer :mother
      t.integer :children
      t.integer :business
      t.integer :workshop

      t.timestamps
    end
  end
end
