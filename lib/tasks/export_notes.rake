namespace :guimets do
  desc "export notes"
  task :notes => :environment do |t, args|
# puts args[:file_name]
#   File.open(args[:file_name], "w+") do |f|
      Note.all.each do |n|
        titre = if n.description then
                  "#{n.texte.titre} [#{n.description}]"
                else
                    n.texte.titre
                end
        auteur_nom = if n.texte.auteur then
                       n.texte.auteur.nom
                     else
                       ''
                     end
 #       STDOUT.puts n.texte.abreviation
        f.puts("#{auteur_nom};#{titre};#{n.cahier};#{n.page}")
      end
    # end
  end
end
