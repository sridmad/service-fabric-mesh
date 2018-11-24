FROM microsoft/dotnet:2.1.6-aspnetcore-runtime-nanoserver-1709 AS base
WORKDIR /app

FROM microsoft/dotnet:2.1.500-sdk-nanoserver-1709 AS build
WORKDIR /src
COPY VotingWeb/VotingWeb.csproj VotingWeb/
COPY . .
RUN dotnet restore VotingWeb/VotingWeb.csproj
WORKDIR /src/VotingWeb
RUN dotnet build VotingWeb.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish VotingWeb.csproj -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "VotingWeb.dll"]