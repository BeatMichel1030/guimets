namespace :guimets do
  desc "search citations with key words"

  task :search, [:key_words, :auteur]  => :environment do |t, args|
    puts "« #{args[:key_words]} » #{args[:auteur]}"

    citations = Citation.contient(args[:key_words]).map do |c|
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
      puts "[#{c[:note]} p#{c[:page]}] #{c[:desc]}"
    end
  end
end
