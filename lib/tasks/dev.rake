require "pastel"

namespace :dev do
  desc "Configura o ambiente de desenvolvimento!"
  task setup: :environment do
    if Rails.env.development?
      pastel = Pastel.new

      opts = {
        style: {
          top: "- ",
          middle: " -- ",
          bottom: " -> ",
        },
        format: :bouncing_ball
      }

      spinners = TTY::Spinner::Multi.new("[#{pastel.yellow(":spinner")}]" + pastel.yellow("Tarefas dev:setup"), opts)

      format = "[#{pastel.yellow(":spinner")}] " + pastel.yellow("Apagando o banco de dados...")
      s1 = spinners.register format
      s1.auto_spin
      %x(rails db:drop)
      s1.success(pastel.green("(Ok)"))

      format = "[#{pastel.yellow(":spinner")}] " + pastel.yellow("Criando o banco de dados... ")
      s2 = spinners.register format
      s2.auto_spin
      %x(rails db:create)
      s2.success(pastel.green("(Ok)"))

      format = "[#{pastel.yellow(":spinner")}] " + pastel.yellow("Migrando o banco de dados...")
      s3 = spinners.register format
      s3.auto_spin
      %x(rails db:migrate)
      s3.success(pastel.green("(Ok)"))

      format = "[#{pastel.yellow(":spinner")}] " + pastel.yellow("Semeando o banco de dados...")
      s4 = spinners.register format
      s4.auto_spin
      %x(rails db:seed)
      s4.success(pastel.green("(Ok)"))
    else
      puts "Você não esta em ambiente de desenvolvimento"
    end
  end
end
