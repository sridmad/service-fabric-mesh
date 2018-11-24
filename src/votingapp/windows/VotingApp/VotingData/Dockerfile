FROM microsoft/dotnet:2.1.6-aspnetcore-runtime-nanoserver-1709 AS base
WORKDIR /app

FROM microsoft/dotnet:2.1.500-sdk-nanoserver-1709 AS build
WORKDIR /src
COPY VotingData/VotingData.csproj VotingData/
COPY . .
RUN dotnet restore VotingData/VotingData.csproj
WORKDIR /src/VotingData
RUN dotnet build VotingData.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish VotingData.csproj -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "VotingData.dll"]