module LancamentosHelper
	total = 0

	def total(valor)
		@lancamentos.each do |x|
			total += x.valor
		end
	end

	def exibetotal
		total
	end
end
