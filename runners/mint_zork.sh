dfx identity use zork_icrc1_admin
# Get Name
# dfx canister call token icrc1_name  --query --ic

# Get Symbol
# dfx canister call token icrc1_symbol  --query --ic

# echo "Total supply: "
# dfx canister call token icrc1_total_supply  --query --ic

ZORK_LIQUIDITY_PRINCIPAL=$(dfx identity get-principal --identity zork_liquidity)

echo "zork lp balance"
dfx canister call token icrc1_balance_of "(record { 
    owner = principal \"$ZORK_LIQUIDITY_PRINCIPAL\";
    subaccount = null;
  })" --query --ic


# Mint Tokens
# echo "Minting"
# dfx canister call token icrc1_transfer "(record { 
#   memo = null; 
#   created_at_time=null;
#   from_subaccount = null;
#   amount = 10560000000000000;
#   to = record { 
#     owner = principal \"peg2s-47dqj-7dnez-bznad-kclyo-rxbc7-oor7s-wc3kx-e5k23-ziivp-oqe\";
#     subaccount = null;
#   };
#   fee = null
# })" --ic

# echo "zork lp balance"
# dfx canister call token icrc1_balance_of "(record { 
#     owner = principal \"$ZORK_LIQUIDITY_PRINCIPAL\";
#     subaccount = null;
#   })" --query --ic




# echo "Total supply: "
# dfx canister call token icrc1_total_supply  --query  --ic


