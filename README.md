# DTZ
 Ferrmenta Criada durante a Semana 5 do Curso Novo Pentest Profissional da Desec Security. O Intuito da ferramenta é realizar a resolução de servidores DNS a partir do utilitário host com um endereço web e com o endereço desses servidores DNS realizar a técnica de DNS Transfer Zone. Adendo, antes da execução da ferramenta, verifique pelo NMAP ou por alguma ferramenta de recon se a porta 53 DNS TCP está aberta no servidor que você quer realizar o teste.
 `nmap -sS -vv -Pn 53 <ip/address.com>`

 ## Explain
 A técnica de DNS Transfer Zone explora uma má configuração de servidores DNS secundários de um determinado site. Ou seja, ele a partir de um endereço da internet faz a resolução para endereço IP, após realizar a conversão para endereço IP, ele realiza consultas DNS com a finalidade de descobrir outros endereços do servidor.
 
 Para executar, basta dar permissões de uso ao arquivo.
 
 `chmod +x dnszone.sh`     
 
 `./dnszone.sh <subdomain.com.br>`
