#Buscar en docketHub si existe un sistro de linux en especifico\
#O busca un ambiente para el docker
FROM ubuntu:latest  
#que sistema operativo va a correr o a simular 
#de tus imagenes de ubuntu que ya tienes te vas a llevar la version latest 

#Argumento al sistema operativo para que el GUI no cause problemas
ARG DEBIAN_FRONTEND=noninteractive      


#Se instala python
#   apt update
#-y espamea Y para darle siguiente siguiente siguiente

# RUN apt-get update
# RUN apt-get install -y python3
# RUN apt-get install -y python3-pip
# RUN apt-get install -y git
# RUN apt-get install -y curl

RUN apt-get update && \
    apt-get install -y\
    python3 python3-pip\
    git curl &&\
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace 
#ponerle el nombre creo

RUN git clone <Nombre de tu repo> #https://github.com/AdrianMTZVazquez/SD2026-2A.git

#Crear una consola que va a dormirse por simpre para que no se apague el container
CMD ["sleep", "infinity"]   
#CMD ["/bin/bash"]
#CMD ["python3","RCDD_2026/main.py"]


