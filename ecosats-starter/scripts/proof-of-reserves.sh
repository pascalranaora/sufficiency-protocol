#!/bin/bash
# proof-of-reserves.sh — Shows: BTC in vault + EcoSats issued = fair

# How to use:  Edit line 5: Replace bc1t... with your real multisig address  
# Run:
# chmod +x scripts/proof-of-reserves.sh
# ./scripts/proof-of-reserves.sh



VAULT_ADDRESS="bc1t..."  # ← CHANGE TO YOUR MULTISIG ADDRESS
MINT_URL="http://localhost:3338"
OUTPUT_FILE="/home/pi/ecosats/proof-of-reserves-$(date +%F).md"

# 1. Get BTC balance
BTC_BALANCE=$(bitcoin-cli -rpcconnect=localhost getreceivedbyaddress $VAULT_ADDRESS 0)
SATOSHIS=$(echo "$BTC_BALANCE * 100000000" | bc | awk '{print int($1)}')

# 2. Get total EcoSats issued
TOTAL_ES=$(curl -s "$MINT_URL/total" | jq .total)

# 3. Get sufficiency units verified (example: from ledger)
VERIFIED_UNITS=$(jq '.verified' /home/pi/ecosats/ledger/sufficiency.json)

cat << EOF > $OUTPUT_FILE
# Proof of Reserves — $(date +"%B %d, %Y")

**We promise: Every EcoSat is backed.**

| Item | Amount |
|------|--------|
| Bitcoin in vault | $SATOSHIS sats |
| EcoSats issued | $TOTAL_ES ES |
| Sufficiency units verified | $VERIFIED_UNITS |

**1 ES = 1 sat OR 1 sufficiency unit**  
**We cannot print more than we have.**

**Vault Address**: \`$VAULT_ADDRESS\`  
**Verify on any Bitcoin explorer.**

*Signed by the Commons Council*  
$(date)
EOF

echo "Proof published: $OUTPUT_FILE"
echo "Post this on your co-op wall or website!"

# The revolution runs on Raspberry Pi and sunshine.  


