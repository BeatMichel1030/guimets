
require 'test_helper'

class CitationTest < ActiveSupport::TestCase
  def setup
    Citation.create(note_id: 1, textePage: 1, description: 'ma première citation' )
    Citation.create(note_id: 21, textePage: 2, description: 'une seconde citation' )
  end

   test 'Citation.search trouve deux résultats' do
     assert_equal 2, Citation.contient('citation').size
   end

  test 'Citation.search avec deux termes' do
    assert_equal 1, Citation.contient('citation seconde').size
  end

  test 'Citation.search avec deux termes' do
      assert_equal 0, Citation.contient('première seconde').size
  end
end