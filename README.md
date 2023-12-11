# DockerTest
в cmd\power shell выполнить установку dotnet sdk
winget install Microsoft.DotNet.SDK.8

склонировать репозиторий

выполнить команду в папке проекта через терминал
dotnet build

установить и запустить докер, после чего в папке нашего сервиса найти папку с файлом dockerfile и выполнить в этом каталоге команду
docker build -t lilmicrodocker .

затем
docker run -p 8080:80 lilmicrodocker

скрин работающего сервиса в браузере скинуть в личку
