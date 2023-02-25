chmod 777 /home/upm/Desktop/rdsv-final/pck

# Registrar repositorio de helm
osm repo-add --type helm-chart --description "Repositorio Helm" helmchartrepo https://Luislopal.github.io/repo-rdsv

# Importamos los paquetes VNF a OSM
# osm vnfd-update --content /home/upm/Desktop/rdsv-final/pck/accessknf_vnfd.tar.gz accessknf_vnfd
# osm vnfd-update --content /home/upm/Desktop/rdsv-final/pck/cpeknf_vnfd.tar.gz cpeknf_vnfd
osm nfpkg-create /media/sf_PracticaFinal/rdsv-final/pck/accessknf_vnfd.tar.gz
osm nfpkg-create /media/sf_PracticaFinal/rdsv-final/pck/cpeknf_vnfd.tar.gz

echo "Visualizamos los paquetes VNF subidos"
osm vnfd-list

# osm vnfd-update --content /home/upm/Desktop/rdsv-final/pck/renes_ns.tar.gz renes_ns
# Importamos los paquetes NS a OSM
osm nspkg-create /media/sf_PracticaFinal/rdsv-final/pck/renes_ns.tar.gz

echo "Visualizamos el paquete NS importado"
osm nsd-list
