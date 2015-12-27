class Genre < ActiveRecord::Base
  default_scope {order('nom ASC')}

  def name
    nom
  end
end
