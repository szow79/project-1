class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :status
      t.integer :price
      t.references :website

      t.timestamps
    end
  end
end
