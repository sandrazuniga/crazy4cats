class CreateRazas < ActiveRecord::Migration[7.0]
  def change
    create_table :razas do |t|
      t.string :nombre
      t.text :description

      t.timestamps
    end
  end
end
