class CriarContaController < ApplicationController
  def index

  end

  def new
    data = params[:clientes]

    @cliete = Cliente.new(
      nome: "#{data[:primeiro_nome]} #{data[:segundo_nome]}",
      cpf: data[:cpf],
      telefone: data[:telefone],
      email: data[:email],
      endereco: "#{data[:endereco]} - #{data[:cep]}, #{data[:cidade]}, #{data[:estado]}"
    )


    agencia = Agencias.find_by(num_agencia: get_agencia(data[:cidade]))
    if @cliete.save
      @conta = Contas.new(numero: rand(10000..50000), saldo: 0.0, data_abertura: DateTime.current.to_date, clientes_id: @cliete.id, agencias_id: agencia.id)
      if @conta.save
        redirect_to controller: :criar_conta, action: :show, id: @conta.id
      end
    end
  end

  def show
    @cliete = Cliente.find(params[:id])
    @conta = Contas.find_by(clientes_id: @cliete.id)
    @agencia = Agencias.find(@conta.agencias_id)

  end

  private
  def get_agencia(cidade)
    num_agencias = {"Goiania": 1234,
     "Aparecida de Goiania": 5678,
     "Brasilia": 9876
    }
    num_agencias[:"#{cidade}"]
  end
end
