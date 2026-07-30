#!/usr/bin/bash
# How many new outputs were created by block 243,825?
BLOCK_HASH=$(bitcoin-cli -signet getblockhash 243825)
bitcoin-cli -signet getblock "$BLOCK_HASH" 2 |
	jq '[.tx[].vout[]] | length'

