# Instalação do PHP no Windows

Este script em lote (batch) automatiza a instalação do PHP em ambientes Windows. Siga as instruções abaixo para garantir uma instalação suave.

## Pré-requisitos

- Certifique-se de que o script seja executado com privilégios de administrador.

## Instruções

1. **Defina as Variáveis:**
   - Abra o script em um editor de texto e ajuste as variáveis conforme necessário.
     ```batch
     set PHP_VERSION=8.2.12
     set PHP_ARCH=nts-Win32-vs16-x64
     set PHP_URL=https://windows.php.net/downloads/releases/php-%PHP_VERSION%-%PHP_ARCH%.zip
     set PHP_INSTALL_DIR=C:\php
     ```

2. **Execute o Script:**
   - Execute o script em um prompt de comando.
     ```batch
     install_php.bat
     ```

3. **Aguarde a Conclusão:**
   - O script verificará se o PHP já está instalado no diretório especificado. Se já estiver, a instalação será interrompida.
   - Caso contrário, o script criará o diretório de instalação, baixará e extrairá o PHP, adicionará o diretório ao PATH e excluirá o arquivo ZIP.

4. **Reinicie o Prompt de Comando:**
   - Após a conclusão, reinicie qualquer janela de prompt de comando aberta para aplicar as alterações nas variáveis de ambiente.

## Observações

- O script utiliza o utilitário `curl` para baixar o arquivo ZIP do PHP e o PowerShell para extrair o conteúdo.
- Certifique-se de ter uma conexão de internet ativa durante a execução do script.
- Verifique se o diretório de instalação não contém uma instalação existente do PHP para evitar conflitos.

---

**Observação:** Este script foi projetado para ambientes Windows e pode exigir ajustes dependendo das configurações específicas do sistema. Certifique-se de ler e entender o script antes da execução.
