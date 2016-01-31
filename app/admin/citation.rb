ActiveAdmin.register Citation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :note_id, :textePage, :notesPage, :description

  filter :textePage

# cont_all est bien ce qu'on veut, mais pour que ça fonctionne il faut pouvoir
# faire un split de ce qui est entrée comme critère (remplacer "étant méta"
# par ["étant" "méta"])

  filter :description, label: 'mots-clé', filters: [:cont_all]

  controller do
    def before_filter
      # comment faire un split(' ') ici ?
    end
  end

end
