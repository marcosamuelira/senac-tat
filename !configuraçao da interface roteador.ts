!configuraçao da interface roteador

Enable  
    configure terminal
   interface gigabitetehrnet 0/0
   description interafce de gateway da rede 
   ip address 192.168.1.254 255.255.255.0
   no shutdown
   end

   write

   show running-config 
   show ip interface brief 
   ping 192.168.1.250
   ping 192.168.1.251 
   ping 