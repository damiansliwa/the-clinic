class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
