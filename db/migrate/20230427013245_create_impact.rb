class CreateImpact < ActiveRecord::Migration[7.0]
  def change
    create_table :impacts do |t|
      t.string :mother
      t.string :children
      t.string :business
      t.string :workshop

      t.timestamps
    end
  end
end
