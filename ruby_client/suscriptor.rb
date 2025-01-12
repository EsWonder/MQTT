# suscriptor.rb
require 'mqtt'

puts "Conectando al broker MQTT..."

begin
  MQTT::Client.connect('mqtt://localhost') do |client|
    puts "Conectado exitosamente al broker MQTT!"

    # Suscribiéndonos al tema "test/topic"
    client.subscribe('test/topic')

    # Esperando y recibiendo mensajes
    client.get('test/topic') do |topic, message|
      puts "Mensaje recibido en '#{topic}': #{message}"
    end
  end
rescue => e
  puts "Error al conectar al broker: #{e.message}"
end
