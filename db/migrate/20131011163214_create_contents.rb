class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :link
      t.text :text

      t.timestamps
    end
  end
end
