class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :url
      t.hstore :content

      t.timestamps     null: false
    end
  end
end
