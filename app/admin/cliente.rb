ActiveAdmin.register Cliente do

  filter :nome
  filter :email

  index do
    column :nome
    column :email
    column :saldo
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :nome
      f.input :email
      f.input :saldo
    end
    f.actions
  end
end
