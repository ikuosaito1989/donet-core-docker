FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
COPY bin/Release/netcoreapp3.1/linux-x64/publish App/
WORKDIR /App
ENTRYPOINT ["dotnet", "dotnet-core-docker.dll"]