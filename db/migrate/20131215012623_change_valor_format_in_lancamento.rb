class ChangeValorFormatInLancamento < ActiveRecord::Migration
  def change
  	change_column :lancamentos, :valor, :real
  end
end
