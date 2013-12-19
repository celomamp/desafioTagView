class CreateLancamentos < ActiveRecord::Migration
  def change
    create_table :lancamentos do |t|
      t.references :user, index: true
      t.date :data
      t.text :descricao
      t.decimal :valor

      t.timestamps
    end
  end
end
