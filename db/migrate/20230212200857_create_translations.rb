class CreateTranslations < ActiveRecord::Migration[7.0]
  def change
    create_table :translations do |t|
      t.string :meaning
      t.references :word, null: false, foreign_key: true
      t.timestamps
    end
  end
end
