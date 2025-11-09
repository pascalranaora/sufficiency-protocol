#!/bin/bash
# demurrage.sh — Burns 2% of large balances (>1000 ES) monthly -- Use It or Lose It

## How to use:
## Run on the 1st of every month via crontab:
# crontab -e
# # Add:
# 0 0 1 * * /home/pi/ecosats-starter/scripts/demurrage.sh >> /home/pi/demurrage.log 2>&1




MINT_URL="http://localhost:3338"
LEDGER_FILE="/home/pi/ecosats/ledger/balances.json"
DEMURRAGE_RATE=0.02
MIN_BALANCE=1000

echo "Applying 2% demurrage..."

# Get all balances from Cashu (simplified)
curl -s "$MINT_URL/balances" > /tmp/balances.json

# Loop through each user
jq -r 'to_entries[] | "\(.key) \(.value)"' /tmp/balances.json | while read USER BALANCE; do
  if (( $(echo "$BALANCE > $MIN_BALANCE" | bc -l) )); then
    BURN=$(echo "$BALANCE * $DEMURRAGE_RATE" | bc -l | awk '{print int($1)}')
    echo "Burning $BURN ES from $USER"

    # Send burn command to mint
    curl -s -X POST "$MINT_URL/burn" \
      -H "Content-Type: application/json" \
      -d "{\"user\": \"$USER\", \"amount\": $BURN}" > /dev/null
  fi
done

echo "Demurrage complete."