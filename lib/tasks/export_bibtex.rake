namespace :guimets do
  desc "export bibtex"
  def attribute(name, value)
    "   ,#{name.ljust(12)} = {#{value}}"
  end
  task :bibtex  => :environment do |t, args|
    # task :bibtex, [:file_name]  => :environment do |t, args|
    
# puts args[:file_name]
#     File.open(args[:file_name], "w+") do |f|
      Texte.where(actif: true).each do |tx|
        case tx.genre.nom
          when 'livre', 'collection'          then puts "@book{#{tx.abreviation}"
          when 'article'                      then puts "@article{#{tx.abreviation}"
          when 'dansCollection', 'dansLivre'  then puts "@incollection{#{tx.abreviation}"
          when 'actes'                        then puts "@proceedings{#{tx.abreviation}"
        end
        if tx.auteur.present?
          if tx.genre.nom == 'collection'
            puts attribute('editor',    tx.auteur.libelle)
          else
            puts attribute('author',    tx.auteur.libelle)
          end
        end
        if tx.genre.nom == 'dansCollection' || (tx.texte.present? && tx.genre.nom == 'dansLivre')
          puts attribute('booktitle', tx.texte.titre)
        end
        puts attribute('title',     tx.titre)             if tx.titre.present?
        puts attribute('publisher', tx.editeur.nom)       if tx.editeur.present?
        puts attribute('year',      tx.annee)             if tx.annee.present?
        puts attribute('note',      tx.remarque)          if tx.remarque.present?
        puts attribute('crossref',  tx.texte.abreviation) if tx.texte.present?
        puts attribute('journal',   tx.journal)           if tx.journal.present?
        puts attribute('volume',    tx.volume)            if tx.volume.present?
        puts attribute('number',    tx.numero)            if tx.numero.present?
        puts attribute('pages',     tx.pages)             if tx.pages.present?
        puts attribute('booktitle', tx.titre_livre)       if tx.titre_livre.present?
        puts '}'
      end
    # end
  end
end
