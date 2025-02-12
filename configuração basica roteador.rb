configuração basica roteador

!Modo previlegiado
Enable
Configurar data e hora 
!Clock set
19:30:00 11 fev 2025
Modo de configuração global
!configure terminal
Nomear roter
!hostaneme rt-01
Enccriptografia de senha 
!service password-encryptetion

service timetamps log datetime msec
service timetamps debug datetime msec
no ip domain-lookup
banner motd #AVISO: CUIDADO#
security passwords min-length 8
Enable secret 123@senac 
username senac secret 123@senac
username samuel password 123@senac
username admin privilege 15 secret 123@senac

ip domain-name senac.com.br
crypto key generate rsa general-keys modulos 1024
ip ssh version 2
ip ssh time-out 60 
ip ssh authentication-retries 2
login block-for 120 attempts 2 within 60


console

!line console 0
!login local
!loggin synchronous
!exec time-out 5 30

volta um nivel de configuração 
exit


line vty 0 4 
!login local
!loggin synchronous
!exec time-out 5 30
!trasnport input ssh 
end

serve remover um configuração feita
!no 
execulta todos os comandos sem precisar sair da onde está
!do 



configuraçao da interface roteador