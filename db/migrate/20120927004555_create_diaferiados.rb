class CreateDiaferiados < ActiveRecord::Migration
  def change
    create_table :diaferiados do |t|
      t.text :dectription
      t.string :fecha
	  t.integer :user_id
	  
      t.timestamps
    end
  end
end
