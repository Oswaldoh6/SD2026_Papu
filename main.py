import time

def ciclo():
    cnt = 0
    print("Iniciando ciclo...")
    try:
        print(f"{cnt}:Ciclo en ejecucion...")
    except KeyboardInterrupt:
        print("Ciclo interrumpido por el usuario.")
        
    while True:
        print(f"{cnt}:Ciclo en ejecucion...")
        cnt += 1
        time.sleep(1)

if __name__ == "__main__":
    ciclo()