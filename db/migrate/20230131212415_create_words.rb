class CreateWords < ActiveRecord::Migration[7.0]
  def change
    create_table :words do |t|
      t.string :family
      t.string :core
      t.text :comment

      #for nouns below:

      t.string :indefsing
      t.string :defsing
      t.string :indefplur
      t.string :defplur

      #for adjectives below:

      t.string :masfem
      t.string :neuter
      t.string :partic
      t.string :plur
      t.string :comperat
      t.string :supindef
      t.string :supdef

      #for verbs below:

      t.string :infinit
      t.string :pres
      t.string :preterit
      t.string :presperf
      t.string :imperat
      t.string :perfparmasfem
      t.string :perfparneuter
      t.string :perfparartic
      t.string :perfparplur
      t.string :prespar

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
