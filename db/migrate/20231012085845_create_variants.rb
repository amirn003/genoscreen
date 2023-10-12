class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.string :gene
      t.integer :position_start
      t.integer :position_end
      t.string :type
      t.string :annotation
      t.references :analysis, null: false, foreign_key: true

      t.timestamps
    end
  end
end
