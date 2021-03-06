class Lancamento < ActiveRecord::Base
  belongs_to :user
  

  validates :data, :descricao, :valor, presence: true

   def self.search(search, min_date, max_date)
    
    lancamentos = Lancamento.all
	    
	  lancamentos = lancamentos.where('user_id = ?', search) if search.present?
	  lancamentos = lancamentos.where('data >= ?', min_date) if min_date.present?
	  lancamentos = lancamentos.where('data <= ?', max_date) if max_date.present?

	   	
    lancamentos
    end

  def self.total2
    
    lancamentos = Lancamento.all
    total = 0
    
    lancamentos.each do |x|
      total += x.valor
    end

    total
  end

  


end
