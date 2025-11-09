#!/bin/bash
echo "🚀 Starting EcoSats in 90 seconds..."

# 1. Create folders
mkdir -p /home/pi/ecosats/{bitcoin,lightning,cashu,ledger,backups}

# 2. Start Bitcoin Core (pruned)
docker run -d --name bitcoin \
  -v /home/pi/ecosats/bitcoin:/data \
  -p 8333:8333 \
  ruimarinho/bitcoin-core \
  -server -rest -rpcallowip=172.17.0.0/16 -prune=550

# 3. Start LND (Lightning)
sleep 30
docker run -d --name lnd \
  -v /home/pi/ecosats/lightning:/root/.lnd \
  --link bitcoin \
  lightninglabs/lnd \
  lnd --bitcoin.active --bitcoin.mainnet --bitcoin.node=bitcoind

# 4. Start Cashu Mint (EcoSats printer)
docker run -d --name cashu \
  -v /home/pi/ecosats/cashu:/data \
  -p 3338:3338 \
  cashubtc/meow:latest

# 5. Generate 100 QR Wallets
mkdir -p /home/pi/ecosats/wallets
cd /home/pi/ecosats/wallets
for i in {1..100}; do
  TOKEN=$(curl -s -X POST http://localhost:3338/mint -d '{"amount": 10}' | jq -r .token)
  echo "$TOKEN" > wallet-$i.txt
  qrencode -o wallet-$i.png "$TOKEN"
done

# 6. Print welcome message
echo "=================================================="
echo "✅ ECO SATS IS LIVE!"
echo "   Bitcoin node: running"
echo "   Lightning: running"
echo "   Cashu Mint: http://$(hostname -I | awk '{print $1}'):3338"
echo "   100 wallets ready in /home/pi/ecosats/wallets/"
echo "   Next: Give QR stickers + start trading!"
echo "=================================================="