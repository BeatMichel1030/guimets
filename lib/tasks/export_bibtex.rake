namespace :bibtex do
  desc "export bibliography to latex"
  def attribute(name, value)
    "   ,#{name.ljust(12)} = {#{value}}"
  end
  task :export, [:file_name]  => :environment do |t, args|
# puts args[:file_name]
    File.open(args[:file_name], "w+") do |f|
      Texte.where(actif: true).each do |tx|
        case tx.genre.nom
          when 'livre', 'collection'          then f.puts "@book{#{tx.abreviation}"
          when 'article'                      then f.puts "@article{#{tx.abreviation}"
          when 'dansCollection', 'dansLivre'  then f.puts "@incollection{#{tx.abreviation}"
        end
        if tx.auteur.present?
          if tx.genre.nom == 'collection'
            f.puts attribute('editor',    tx.auteur.libelle)
          else
            f.puts attribute('author',    tx.auteur.libelle)
          end
        end
        f.puts attribute('title',     tx.titre)             if tx.titre.present?
        f.puts attribute('publisher', tx.editeur.nom)       if tx.editeur.present?
        f.puts attribute('year',      tx.annee)             if tx.annee.present?
        f.puts attribute('note',      tx.remarque)          if tx.remarque.present?
        f.puts attribute('crossref',  tx.texte.abreviation) if tx.texte.present?
        f.puts attribute('journal',   tx.journal)           if tx.journal.present?
        f.puts attribute('volume',    tx.volume)            if tx.volume.present?
        f.puts attribute('number',    tx.numero)            if tx.numero.present?
        f.puts attribute('pages',     tx.pages)             if tx.pages.present?
        f.puts attribute('booktitle', tx.titre_livre)       if tx.titre_livre.present?
        f.puts '}'
      end
    end
  end
end
