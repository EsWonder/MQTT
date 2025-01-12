## MQTT Ruby Client Project

This project demonstrates a simple MQTT client implementation in Ruby, including a publisher and a subscriber communicating via an MQTT broker (e.g., Mosquitto). It showcases the basics of the MQTT protocol with Ruby.

**Requirements**  
- Ruby >= 3.0.0  
- Mosquitto (MQTT Broker) >= 2.0.0  
- Docker >= 20.10.0  
- Gems: mqtt  

**Installation Steps**  
1. Ensure Ruby, Bundler, and Mosquitto are installed. Install Docker for containerization if needed.  
2. Clone the repository:  
   `git clone https://github.com/your-repository-name/mqtt-ruby-client.git`  
   `cd mqtt-ruby-client`  

**Run the Project**  
1. Install required gems: `bundle install`  
2. Start the Mosquitto broker: `mosquitto`  
3. Run the subscriber: `ruby suscriptor.rb`  
4. Run the publisher: `ruby publicador.rb`  

**Containerize with Docker**  
1. Build the Docker image: `docker build -t mqtt-ruby-client .`  
2. Run the container: `docker run --name mqtt-ruby-client -d mqtt-ruby-client`  
3. Check logs: `docker logs mqtt-ruby-client`  

**Docker Hub**  
Replace with the link to your Docker Hub repository.
