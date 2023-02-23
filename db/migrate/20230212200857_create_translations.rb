class CreateTranslations < ActiveRecord::Migration[7.0]
  def change
    create_table :translations do |t|
      t.string :meaning

      #for nouns below:

      t.string :transindefsing
      t.string :transdefsing
      t.string :transindefplur
      t.string :transdefplur


      t.references :word, null: false, foreign_key: true
      t.timestamps
    end
  end
end
