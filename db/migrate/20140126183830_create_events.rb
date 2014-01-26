class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :when
      t.string :address

      t.timestamps
    end
  end
end
