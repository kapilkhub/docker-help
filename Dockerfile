FROM mcr.microsoft.com/dotnet/core/sdk

ENV ASPNETCORE_URLS http://+:80

WORKDIR c:\\docker-sample

COPY . .

RUN dotnet restore

RUN dotnet publish -o /publish

WORKDIR /publish

ENTRYPOINT ["dotnet","\\publish\\docker-sample.dll"]


