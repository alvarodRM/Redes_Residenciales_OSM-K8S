# Acceder al Escritorio
cd /home/upm/Desktop

# Clonar el proyecto en el escritorio desde git
git clone https://github.com/Luislopal/rdsv-final.git

# Dar permisos
sudo chmod 777 /home/upm/Desktop/rdsv-final

# Acceder al directorio del escritorio
cd /home/upm/Desktop/rdsv-final

# Clonar el repositorio helm en el directorio de la práctica
git clone https://github.com/Luislopal/repo-rdsv.git

# Dar permisos
sudo chmod 777 /home/upm/Desktop/rdsv-final/repo-rdsv

# Configurar la interfaz eth1 en la máquina OSM
ssh upm@192.168.56.12 "sudo ip link set dev eth1 mtu 1400"

#Comprobación
ping -c 3 192.168.56.11
ping -c 3 192.168.56.101

# Permitir acceso a aplicaciones con entorno gráfico (Igual da fallo al hacerlo antes)
xhost +

