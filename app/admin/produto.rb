ActiveAdmin.register Produto do
  actions :all, :except => :destroy

  filter :nome
  filter :preco

  index do
    column :nome
    column :preco
    column :ordem
    column :created_at
    actions
  end

end
