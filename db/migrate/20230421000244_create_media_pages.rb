class CreateMediaPages < ActiveRecord::Migration[7.0]
  def change
    create_table :media_pages do |t|
      t.string :title

      t.timestamps
    end
  end
end
