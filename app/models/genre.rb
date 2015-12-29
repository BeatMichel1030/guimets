# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  nom        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ActiveRecord::Base
  default_scope {order('nom ASC')}

  def name
    nom
  end
end
