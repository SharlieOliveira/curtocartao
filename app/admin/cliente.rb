ActiveAdmin.register Cliente do

  filter :id
  filter :nome
  filter :email

  index do
    column :id
    column :nome
    column :email
    column :saldo
    column :created_at
    actions do |cliente|
      link_to "Histórico", detalhes_historico_path(cliente), :class => "member_link", target: "_blank"
    end
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
