class CreateDiaferiados < ActiveRecord::Migration
  def change
    create_table :diaferiados do |t|
      t.text :dectription
      t.string :fecha
	  t.integer :id_user
	  
      t.timestamps
    end
  end
end
