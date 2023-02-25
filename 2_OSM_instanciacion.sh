# Instanciación rennes 1
export NSID1=$(osm ns-create --ns_name renes1 --nsd_name renes --vim_account dummy_vim)
echo $NSID1

# Instanciación rennes 2
export NSID2=$(osm ns-create --ns_name renes2 --nsd_name renes --vim_account dummy_vim)
echo $NSID2

# Eliminamos la primera ya que falla, y la volvemos a crear
osm ns-delete --wait $NSID1
osm ns-delete --wait $NSID2

# Instanciación rennes 1
export NSID1=$(osm ns-create --ns_name renes1 --nsd_name renes --vim_account dummy_vim)
echo $NSID1

# Instanciación rennes 2
export NSID2=$(osm ns-create --ns_name renes2 --nsd_name renes --vim_account dummy_vim)
echo $NSID2

# Visualización de las instancias creadas (esperar hasta que esten READY)
echo "Visualizamos las instancias creadas"
watch osm ns-list
