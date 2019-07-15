class CreateBook < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.string :publication_year
      t.references :author, foreign_key: true
    end
  end
end
