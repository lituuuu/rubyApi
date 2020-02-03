class CreateWeathers < ActiveRecord::Migration[6.0]
  def change
    create_table :weathers do |t|
      t.string :local
      t.string :content

      t.timestamps
    end
  end
end
