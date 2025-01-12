# publicador.rb
require 'mqtt'

puts "Conectando al broker MQTT..."

begin
  MQTT::Client.connect('mqtt://localhost') do |client|
    puts "Conectado exitosamente al broker MQTT!"
    
    # Pausa de 2 segundos para asegurarse de que el suscriptor esté listo
    sleep(2)

    # Publicando un mensaje
    client.publish('test/topic', '¡Hola desde el publicador!')
    puts "Mensaje publicado en 'test/topic'"
  end
rescue => e
  puts "Error al conectar al broker: #{e.message}"
end
