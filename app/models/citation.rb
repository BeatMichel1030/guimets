class Citation < ActiveRecord::Base
  belongs_to :texte
  #ms = self.search(:titre_contains_all => "circulez voir".split(" "))
  #ms.all
end
