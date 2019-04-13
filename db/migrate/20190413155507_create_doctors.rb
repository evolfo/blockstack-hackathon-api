class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.text :speciality
      t.string :location
      t.integer :years_experience
      t.text :board_certifications, array: true
      t.text :education
      t.string :gender
      t.text :languages, array: true
      t.string :img_url

      t.timestamps
    end
  end
end
