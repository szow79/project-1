class CreateHtmlTags < ActiveRecord::Migration[5.0]
  def change
    create_table :html_tags do |t|
      t.string :name_tag
      t.string :status_tag
      t.string :price_tag
      t.string :next_page_tag
      t.references :website

      t.timestamps
    end
  end
end
