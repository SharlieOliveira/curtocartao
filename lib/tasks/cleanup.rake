task :remove_ghost_clients => :environment do
  Cliente.where(nome: nil, email: nil, saldo: nil).destroy_all
end
