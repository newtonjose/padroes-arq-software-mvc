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
      endereco: "#{data[:endereco]} - #{data[:cep]}, #{data[:cidade]}, #{data[:estado]}")


    if @cliete.save
      redirect_to criar_conta_done_path
    end
  end

  def done

  end
end
