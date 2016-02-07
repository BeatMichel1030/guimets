
require 'test_helper'

class CitationTest < ActiveSupport::TestCase
  def setup
    Genre.create()
    Citation.create(note_id: 1, textePage: 11,
                    description: "entrecroisement entre corpus de la phénoménologie et de métaphysique : "\
                                 "fondement, conditions de possiblité, statut de la subjectivité" )
    Citation.create(note_id: 2, textePage: 22,
                    description: "la frontière entre métaphysique et dépassement de la métaphysique se déplace "\
                                 "à l'intérieur de la phénoménologie" )
    Citation.create(note_id: 2, textePage: 33,
                    description: "métaphysique s'est imposé avec Duns Scot et Suarez quand fut acquis "\
                                 "le concept d'ens (étant)" )
  end

   test 'Citation.search trouve deux résultats' do
     assert_equal 2, Citation.contient('phénomén métaphys').size
   end

  test 'Citation.search trouve un résultat' do
    assert_equal 1, Citation.contient('étant métaphys').size
  end

  test 'Citation.search trouve aucun résultat' do
      assert_equal 0, Citation.contient('étant phénomén').size
  end
end