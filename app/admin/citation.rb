ActiveAdmin.register Citation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :note_id, :textePage, :notesPage, :description, :all_desc

  filter :textePage

# cont_all est bien ce qu'on veut, mais pour que ça fonctionne il faut pouvoir
# faire un split de ce qui est entrée comme critère (remplacer "étant méta"
# par ["étant" "méta"])

  filter :description, label: 'mots-clé', filters: [:cont_all]

 # filter :all_desc, label: 'tous les mots-clés',filters: [:cont_all],as: :string

  controller do
    before_filter do
      desc = params[:q].delete(:description_cont_all)
      params[:q][:description_cont_all] = []
      desc.split(" ").each_with_index { |word, index|
        params[:q][:description_cont_all] << word
      }
      # comment faire un split(' ') ici ?
    end
  end

end
