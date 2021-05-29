#!/bin/bash

set -e

# clear
dfx stop
rm -rf .dfx

ALICE_HOME=$(mktemp -d -t alice-temp)
HOME=$ALICE_HOME

ALICE_PUBLIC_KEY="principal \"$( \
    HOME=$ALICE_HOME dfx identity get-principal
)\""

dfx start --background
dfx canister create registry
dfx build registry

echo ==Create registry canister
dfx canister install registry
TOKEN0_ID=$(dfx canister id registry)

echo ==Create token0 canister
eval dfx canister call registry createToken "'(\"NnsDao\", \"NNS\", 3, 1000000000000)'"

echo ==Get Token list
eval dfx canister call registry getTokenList

echo ==Get User Token List
eval dfx canister call registry getUserTokenList "'($ALICE_PUBLIC_KEY)'"

echo ==Get Token Info by id
eval dfx canister call registry getTokenInfoById "'(0)'"

dfx stop