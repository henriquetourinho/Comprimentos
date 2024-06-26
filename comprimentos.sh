#!/bin/bash

# Token do seu bot Telegram
BOT_TOKEN="SEU_BOT_TOKEN_AQUI"

# IDs dos chats onde as mensagens serão enviadas
CHAT_ID_1="userid"
CHAT_ID_2="userid"
CHAT_ID_3="userid"

# Mensagens de Bom Dia para 30 dias diferentes
MESSAGE_01="Bom dia! Tenha um ótimo dia!"
MESSAGE_02="Bom dia! Que seu dia seja cheio de realizações!"
MESSAGE_03="Bom dia! Espero que seu dia seja tão brilhante quanto o sol!"
MESSAGE_04="Bom dia! Que sua jornada hoje seja maravilhosa!"
MESSAGE_05="Bom dia! Aproveite cada momento do seu dia!"
MESSAGE_06="Bom dia! Que seu dia seja repleto de coisas boas!"
MESSAGE_07="Bom dia! Desejo a você um dia produtivo e feliz!"
MESSAGE_08="Bom dia! Que sua manhã seja cheia de energia positiva!"
MESSAGE_09="Bom dia! Que seu dia seja incrível e cheio de alegria!"
MESSAGE_10="Bom dia! Tenha um dia abençoado e cheio de paz!"
MESSAGE_11="Bom dia! Que sua jornada hoje seja iluminada!"
MESSAGE_12="Bom dia! Desejo um dia maravilhoso para você!"
MESSAGE_13="Bom dia! Que seu dia seja tão especial quanto você!"
MESSAGE_14="Bom dia! Espero que hoje você realize todos os seus objetivos!"
MESSAGE_15="Bom dia! Que sua manhã seja repleta de sorrisos!"
MESSAGE_16="Bom dia! Desejo a você um dia repleto de sucesso!"
MESSAGE_17="Bom dia! Que sua quarta-feira seja espetacular!"
MESSAGE_18="Bom dia! Que seu dia seja cheio de surpresas boas!"
MESSAGE_19="Bom dia! Que sua sexta-feira seja incrível!"
MESSAGE_20="Bom dia! Que seu sábado seja cheio de momentos felizes!"
MESSAGE_21="Bom dia! Que seu domingo seja relaxante e rejuvenescedor!"
MESSAGE_22="Bom dia! Que sua semana comece com muita energia positiva!"
MESSAGE_23="Bom dia! Que sua terça-feira seja maravilhosa!"
MESSAGE_24="Bom dia! Que sua quinta-feira seja abençoada!"
MESSAGE_25="Bom dia! Que seu final de semana seja espetacular!"
MESSAGE_26="Bom dia! Que hoje você conquiste todos os seus sonhos!"
MESSAGE_27="Bom dia! Que seu dia seja leve e cheio de boas vibrações!"
MESSAGE_28="Bom dia! Que seu dia seja tão brilhante quanto seu sorriso!"
MESSAGE_29="Bom dia! Que sua semana seja cheia de sucesso!"
MESSAGE_30="Bom dia! Que seu mês comece com muita positividade!"

# Função para enviar mensagem via Telegram
send_message() {
  local chat_id=$1
  local text=$2
  curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
    -d "chat_id=${chat_id}&text=${text}" > /dev/null
}

# Verificar se é 5 da manhã
CURRENT_HOUR=$(date +%H)
if [ "$CURRENT_HOUR" -eq 5 ]; then
    # Calcular o dia do mês
    DAY_OF_MONTH=$(date +%d)

    # Selecionar a mensagem baseada no dia do mês
    case $DAY_OF_MONTH in
      1) MESSAGE="$MESSAGE_01";;
      2) MESSAGE="$MESSAGE_02";;
      3) MESSAGE="$MESSAGE_03";;
      4) MESSAGE="$MESSAGE_04";;
      5) MESSAGE="$MESSAGE_05";;
      6) MESSAGE="$MESSAGE_06";;
      7) MESSAGE="$MESSAGE_07";;
      8) MESSAGE="$MESSAGE_08";;
      9) MESSAGE="$MESSAGE_09";;
      10) MESSAGE="$MESSAGE_10";;
      11) MESSAGE="$MESSAGE_11";;
      12) MESSAGE="$MESSAGE_12";;
      13) MESSAGE="$MESSAGE_13";;
      14) MESSAGE="$MESSAGE_14";;
      15) MESSAGE="$MESSAGE_15";;
      16) MESSAGE="$MESSAGE_16";;
      17) MESSAGE="$MESSAGE_17";;
      18) MESSAGE="$MESSAGE_18";;
      19) MESSAGE="$MESSAGE_19";;
      20) MESSAGE="$MESSAGE_20";;
      21) MESSAGE="$MESSAGE_21";;
      22) MESSAGE="$MESSAGE_22";;
      23) MESSAGE="$MESSAGE_23";;
      24) MESSAGE="$MESSAGE_24";;
      25) MESSAGE="$MESSAGE_25";;
      26) MESSAGE="$MESSAGE_26";;
      27) MESSAGE="$MESSAGE_27";;
      28) MESSAGE="$MESSAGE_28";;
      29) MESSAGE="$MESSAGE_29";;
      30) MESSAGE="$MESSAGE_30";;
      *) echo "Hoje é um dia fora do alcance das mensagens predefinidas."; exit 1;;
    esac

    # Enviar a mensagem para os chats especificados
    send_message "$CHAT_ID_1" "$MESSAGE"
    send_message "$CHAT_ID_2" "$MESSAGE"
    send_message "$CHAT_ID_3" "$MESSAGE"

    echo "Mensagem de bom dia enviada com sucesso para o dia $DAY_OF_MONTH!"
else
    echo "Ainda não é hora de enviar a mensagem de bom dia."
fi

