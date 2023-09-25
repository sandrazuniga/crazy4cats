class AgregarCamposRazas < ActiveRecord::Migration[7.0]
  def change
    add_column  :razas,  :personalidad,  :text
    add_column  :razas,  :tamano,  :string
    add_column  :razas,  :pelaje,  :string
  end
end
