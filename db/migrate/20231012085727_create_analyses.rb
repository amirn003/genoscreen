class CreateAnalyses < ActiveRecord::Migration[7.0]
  def change
    create_table :analyses do |t|
      t.string :name
      t.string :type
      t.string :sample
      t.references :user, null: false, foreign_key: true
      t.references :laboratory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
