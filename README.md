# DockerTest
1. В cmd\power shell выполнить установку dotnet sdk:
"winget install Microsoft.DotNet.SDK.8"

2. Склонировать репозиторий

3. Выполнить команду в папке проекта через терминал
"dotnet build"

4. Установить и запустить докер, после чего в папке нашего сервиса найти папку с файлом dockerfile и выполнить в этом каталоге команду
"docker build -t lilmicrodocker ."

5. Затем
"docker run -p 8080:80 lilmicrodocker"

скрин работающего сервиса в браузере скинуть в личку
