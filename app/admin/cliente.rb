ActiveAdmin.register Cliente do

  filter :nome

  index do
    column :nome
    column :email
    column :saldo
    actions
  end

end
