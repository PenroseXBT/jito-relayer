#!/bin/bash

# Set environment variables
export RPC_SERVERS="http://localhost:8899"
export WEBSOCKET_SERVERS="wss://mainnet.rpc.jito.wtf/?access-token=<access-token>"
export BLOCK_ENGINE_URL="https://mainnet.block-engine.jito.wtf"
export BLOCK_ENGINE_AUTH_SERVICE_URL="$BLOCK_ENGINE_URL"
export KEYPAIR_PATH="/your/path/to/jito-relayer/relayer-keypair.json"
export SIGNING_KEY_PEM_PATH="/your/path/to/jito-relayer/private.pem"
export VERIFYING_KEY_PEM_PATH="/your/path/to/jito-relayer/public.pem"
export CLUSTER="mainnet-beta"
export REGION="sf"


echo "Running jito-transaction-relayer @ $(date)"

# Execute the relayer command
/your/path/to/jito-relayer/target/release/jito-transaction-relayer \
     --rpc-servers "$RPC_SERVERS" \
     --websocket-servers "$WEBSOCKET_SERVERS" \
     --block-engine-url "$BLOCK_ENGINE_URL" \
     --block-engine-auth-service-url "$BLOCK_ENGINE_AUTH_SERVICE_URL" \
     --keypair-path "$KEYPAIR_PATH" \
     --signing-key-pem-path "$SIGNING_KEY_PEM_PATH" \
     --verifying-key-pem-path "$VERIFYING_KEY_PEM_PATH" \
     --cluster "$CLUSTER" \
     --region "$REGION" 
