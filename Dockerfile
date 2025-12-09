# Используем базовый образ Windows с IIS и .NET Framework
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019

# Устанавливаем рабочую директорию
WORKDIR /inetpub/wwwroot

# Копируем файлы приложения
COPY . .

# Открываем порт 80
EXPOSE 80

# Контейнер будет запускать IIS автоматически
