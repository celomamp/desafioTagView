#require 'debugger'

class Personagem
	
@@quantos = 0
@@instance_collector = []


attr_reader :nome, :funcao, :sexo, :especie

	def initialize(nome, funcao, sexo, especie)
		@nome = nome
		@funcao = funcao
		@sexo = sexo
		@especie = especie

		@@quantos += 1
		@@instance_collector << self
  end

	def self.quantos
		@@quantos
	end

	def self.instance_collector
		@@instance_collector
	end
end

arq = File.readlines("lista_personagens.txt")

arq.each do |personagem|
	dados = personagem.split(',')
	person = Personagem.new(dados[0],dados[1],dados[2],dados[3].strip)
end

masculino = 0
feminino = 0
heroi = 0
vilao = 0
heroina = 0
tartaruga = 0
animais = 0
dinossauros = 0
repteis = 0
peixes = 0
terrestres = 0
aquaticos = 0


Personagem.instance_collector.each do |personagem|

	if personagem.sexo == 'macho'
		masculino += 1
	else
		feminino += 1
	end

	if personagem.funcao == 'herói' && personagem.sexo == 'macho'
		heroi += 1
	elsif personagem.funcao == 'herói' && personagem.sexo != 'macho'
		heroina += 1
	else
		vilao += 1
	end
  
	if personagem.especie == 'tartaruga'
		tartaruga += 1
		repteis += 1
		aquaticos += 1
		terrestres += 1
	end

	if personagem.especie != 'humano' && personagem.especie != 'cogumelo'
		animais += 1
	end

	if personagem.especie == 'dinossauro'
		dinossauros += 1
		repteis += 1
	end

	if personagem.especie == 'peixe'
		peixes += 1
		aquaticos += 1
	end

	if personagem.especie != 'peixe' && personagem.especie != 'tartaruga'
		terrestres += 1
	end




end

puts "Total de Personagens:------------#{Personagem.quantos}"
puts "Total de personagens masculinos:-#{masculino}"
puts "Total de personagens femininos:--#{feminino}"
puts "Quantidade de heróis:------------#{heroi}"
puts "Quantidade de vilões:------------#{vilao}" 
puts "Quantidade de heróinas:----------#{heroina}"
puts "Quantidade de tartarugas:--------#{tartaruga}"
puts "Quantidade de animais:-----------#{animais}"
puts "Quantidade de dinossauros:-------#{dinossauros}"
puts "Quantidade de répteis:-----------#{repteis}"
puts "Quantidade de peixes:------------#{peixes}"
puts "Quantidade de seres terrestres:--#{terrestres}"
puts "Quantidade de seres aquáticos:---#{aquaticos}"