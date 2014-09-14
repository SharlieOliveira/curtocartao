class AddEmailIndexToClientes < ActiveRecord::Migration
  def change
    add_index :clientes, :email, unique: true
  end
end
