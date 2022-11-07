1 собираем контейнер с випнет 
2. Dockerfile собирает сам контейнер из образа ubuntu
   ключ для випнет /app/ключ.dst 
   
3. entrypont.sh скрипт который выполняется при запуске контейнера 
   главное это сделать маскарадинг через иптаблес для впн интерфейса а то не будет рабоать
   iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
   
4. Файл env в нем храняться все переменные главное это пароль для випнет KEYFILE_PASS
5. vipnet.service -- systemd unit для запуска docker-compose
6. docker-compose.yml --
       cap_add:
      - net_admin
    env_file:
      - ./.env
    tmpfs:
      - /run
      - /tmp
    restart: "no"
    privileged: true
    security_opt:
      - label:disable
    networks:
     vip_net:
       ipv4_address: 172.19.0.2    
    stdin_open: true
    tty: true
    volumes:
      - /dev/net:/dev/net:z
      - ./app/abn_00f3.dst:/vipnet/abn_00f3.dst
    
    ---------------------ХЗ ЧТО ЭТО но по хлду нужно--------------
    cap_add:
      - net_admin 
      
    tmpfs:
      - /run
      - /tmp
       
    security_opt:
      - label:disable
        
    stdin_open: true
    tty: true
    ----------------------что про сеть ---------------------------
    volumes:
      - /dev/net:/dev/net:z
      
    ----------------------передача ключа -------------------------
     - ./app/abn_00f3.dst:/vipnet/ключ.dst
     
7.  rdpgeop.sh -- запуск самого рда в геоп с проверкой что запушен юнит отвечающий за контейнер 
    для работы нужно завернуть трафик для термитального сервера геоп на наш контейнет что бы траффик полетел в нужный адаптер контейнера 
    ы   
