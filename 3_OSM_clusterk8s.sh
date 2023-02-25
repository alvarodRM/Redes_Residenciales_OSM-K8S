# Comprobar que existe el cluster
osm k8scluster-list

# Identificador usado para gestionar el cluster
KID=$(osm k8scluster-list | awk 'FNR == 4 {print $4}')
echo $KID

# Mostrar información sober el namespace y guardar este valor
export OSMNS=$(osm k8scluster-show --literal $KID | grep -A1 projects | awk 'FNR == 2 {print $2}')

# Mostrar el valor anterior
echo $OSMNS

# Comprobar que el cliente kubectl está configurado para acceder al cluster
kubectl get namespaces

# Obtener los pods arrancados en la máquina K8S
kubectl -n $OSMNS get pods

# Definir las variables de los pods
ACCPOD1=$(kubectl -n $OSMNS get pods | grep -Eo helmchartrepo-accesschart-[[:digit:]]{10}-[[:alnum:]]{10}-[[:alnum:]]{5})
ACCPOD2=$(kubectl -n $OSMNS get pods | grep -Eo helmchartrepo-accesschart-[[:digit:]]{10}-[[:alnum:]]{10}-[[:alnum:]]{5})
CPEPOD1=$(kubectl -n $OSMNS get pods | grep -Eo helmchartrepo-cpechart-[[:digit:]]{10}-[[:alnum:]]{10}-[[:alnum:]]{5})
CPEPOD2=$(kubectl -n $OSMNS get pods | grep -Eo helmchartrepo-cpechart-[[:digit:]]{10}-[[:alnum:]]{10}-[[:alnum:]]{5})

# Configuramos renes 1 y 2
./osm_renes1.sh
./osm_renes2.sh
