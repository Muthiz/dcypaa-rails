class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.boolean :aa
      t.boolean :alanon
      t.boolean :alateen
      t.date :sobriety_date
      t.boolean :paid

      t.timestamps
    end
  end
end
