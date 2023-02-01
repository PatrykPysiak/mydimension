class CreateSentances < ActiveRecord::Migration[7.0]
  def change
    create_table :sentances do |t|
      t.text :type

      t.timestamps
    end
  end
end
