class CreateConsultants < ActiveRecord::Migration[7.0]
  def change
    create_table :consultants do |t|
      t.string :image_url
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
