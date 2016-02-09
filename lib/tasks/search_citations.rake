namespace :guimets do
  desc "search citations with key words"

  task :search, [:auteur]  => :environment do |t, args|
    STDOUT.puts "auteur : #{args[:auteur]}"
    begin
      STDOUT.puts "keyword ?"
      keywords = STDIN.gets.chomp
      if keywords == '' then break end

      citations = Citation.contient(keywords).map do |c|
        {auteur: c.note.texte.auteur.nom,
         note: c.note.name,
         page: c.textePage,
         desc: c.description}
      end

      if args[:auteur].present? then
        citations = citations.select{|c| c[:auteur] == args[:auteur]}
      end
      citations.sort_by! {|c| [c[:note], c[:page]]}

      citations.each do |c|
        STDOUT.puts "[#{c[:note]} p#{c[:page]}] #{c[:desc]}"
      end
    end while true

  end
end
