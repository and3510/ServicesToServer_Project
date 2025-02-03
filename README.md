<h1 align="center"> ServicesToServer </h1>

<div align="center">

![Badge em Desenvolvimento](http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=GREEN&style=for-the-badge)
![Shell](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Static Badge](https://img.shields.io/badge/nginx-green?style=for-the-badge&logo=nginx)
![Static Badge](https://img.shields.io/badge/bind9-blue?style=for-the-badge&logo=bitdefender)


</div>

## Sumário

* [Integrantes](#integrantes)
* [Descrição](#descrição)
* [Requisitos](#requisitos)
* [Tecnologias](#tecnologias)
* [Fluxo_do_Software](#fluxo_do_software)
* [Dificuldades](#dificuldades)
* [Resultados](#resultados)
* [Como_Usar](#como_usar)
* [Conclusão](#conclusao)

## Integrantes

- Anderson do Vale - [and3510](https://github.com/and3510)

## Descrição

O projeto **ServicesToServer** visa facilitar a instalação de serviços essenciais em servidores Ubuntu, com foco em ambientes web e de rede. Através de scripts Shell, o repositório automatiza a instalação e configuração de serviços como **Nginx** (servidor web) e **Bind9** (servidor DNS). Os serviços foram testados e validados no **Ubuntu Server 22.04.5**, garantindo que o processo de instalação seja simples e eficaz.

## Requisitos

- **Sistema Operacional:** Ubuntu Server 22.04.5 ou versões superiores.
- **Acesso root ou sudo:** O usuário deve ter permissões de administrador para instalar pacotes e configurar serviços.
- **Conexão à Internet:** Necessária para o download dos pacotes e dependências.

## Tecnologias

- **Shell Script:** Linguagem principal utilizada para os scripts de instalação.
- **Nginx:** Servidor web utilizado para a instalação e configuração.
- **Bind9:** Servidor DNS para gerenciamento de domínios.
- **Ubuntu Server 22.04.5:** Sistema operacional utilizado para os testes.

## Fluxo do Software

1. O script inicia a instalação dos pacotes necessários (Nginx, Bind9, e dependências).
2. Realiza a configuração básica de cada serviço de acordo com as necessidades do usuário.
3. Inicia os serviços configurados e realiza a verificação de seu funcionamento.
4. Em caso de erros, o script fornece informações úteis para correção.

## Dificuldades

- **Compatibilidade de versões:** Durante o desenvolvimento, surgiram questões de compatibilidade de versões do Ubuntu com alguns pacotes. Ajustes foram feitos para garantir que os scripts funcionassem corretamente no Ubuntu Server 22.04.5.
- **Configuração do Bind9:** A configuração do Bind9 exigiu a adaptação de arquivos de zona e arquivos de configuração, o que gerou desafios para garantir o correto funcionamento do serviço DNS.

## Resultados

- **Instalação bem-sucedida:** Todos os scripts de instalação foram bem-sucedidos ao serem executados em um ambiente Ubuntu Server 22.04.5.
- **Serviços em funcionamento:** O Nginx e o Bind9 foram configurados e estão operacionais após a execução dos scripts.
- **Facilidade de uso:** A automatização da instalação facilita o processo, economizando tempo e minimizando erros de configuração manual.

## Como Usar

1. **Clone o repositório:**

   ```bash
   git clone https://github.com/and3510/ServicesToServer.git
   ```

2. **Entre no diretório do projeto:**

   ```bash
   cd ServicesToServer
   ```

3. **Execute o script para instalar os serviços desejados:**

   - Para instalar o **Nginx**:

     ```bash
     sudo ./nginx_install.sh
     ```

   - Para instalar o **Bind9**:

     ```bash
     sudo ./bind9_install.sh
     ```

4. **Acompanhe a saída do script para ver o progresso da instalação e possíveis erros.**

## Conclusão

O projeto **ServicesToServer** proporciona uma maneira prática e eficiente de configurar servidores Ubuntu com serviços web e DNS essenciais. A utilização de scripts Shell simplifica o processo de instalação, tornando-o acessível mesmo para iniciantes. A automação do processo ajuda a reduzir erros manuais e agiliza a configuração de ambientes de servidores.

