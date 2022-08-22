class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :graduacao
      t.string :matricula

      t.timestamps
    end
  end
end
