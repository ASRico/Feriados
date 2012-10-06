class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :name
      t.string :pais
      t.string :email
      
      t.timestamps
    end
  end
end
