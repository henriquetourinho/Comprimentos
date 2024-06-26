# Script de Envio Automático de Mensagens para Telegram

Este script foi desenvolvido para enviar automaticamente mensagens diárias para grupos específicos no Telegram, contendo uma mensagem de "Bom Dia" e uma imagem correspondente.

## Requisitos

- **Bot do Telegram**: É necessário ter um bot configurado no Telegram e obter o token do bot.
- **Imagens**: Cada mensagem de "Bom Dia" está associada a uma imagem específica. Certifique-se de ter as imagens correspondentes e ajuste os caminhos no script.
- **API do Telegram**: O script utiliza a API do Telegram para enviar mensagens e imagens.

## Funcionamento

O script é configurado para ser executado diariamente às 5:00 da manhã. Ele verifica o dia do mês e envia a mensagem de "Bom Dia" correspondente junto com uma imagem específica para os grupos configurados no Telegram.

### Arquivos Incluídos

- `enviar_mensagem.sh`: O script principal que envia mensagens de "Bom Dia" para o Telegram.
- Imagens: Imagens correspondentes a cada mensagem de "Bom Dia", nomeadas de `image01.jpg` a `image30.jpg`.

## Configuração do Ambiente

### Passos para Configuração

1. **Token do Bot**: Substitua `"SEU_BOT_TOKEN_AQUI"` no script `enviar_mensagem.sh` pelo token do seu bot do Telegram.
2. **IDs dos Chats**: Substitua os IDs dos chats (`CHAT_ID_1`, `CHAT_ID_2`, `CHAT_ID_3`) pelos IDs reais dos grupos onde deseja enviar as mensagens.
3. **Imagens**: Certifique-se de que as imagens correspondentes estão presentes e ajuste os caminhos no script conforme necessário.

### Execução Automática

Para configurar a execução diária:

```bash
0 5 * * * /caminho/para/seu/script.sh

