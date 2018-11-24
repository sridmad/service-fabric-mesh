#!/bin/sh
echo docker build linux -f linux/VotingData/Dockerfile -t azure-mesh-votingdata:dev
docker build linux -f linux/VotingData/Dockerfile -t azure-mesh-votingdata:dev
echo docker build linux -f linux/VotingWeb/Dockerfile -t azure-mesh-votingweb:dev
docker build linux -f linux/VotingWeb/Dockerfile -t azure-mesh-votingweb:dev
