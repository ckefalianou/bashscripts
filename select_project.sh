function select_project() {
  PS3="Select project: "
  options=("Cardealercrm" "DriversApp" "Nada")

  select opt in "${options[@]}"; do
    case $REPLY in
      1) cd ~/Desktop/cardealercrm && break ;;
      2) cd ~/Desktop/drivers-app && break ;;
      3) cd ~ && break ;;
      *) echo "Invalid option. Try again."; continue ;;
    esac
  done
}

# Only show menu in interactive terminal (not on scripts)
if [[ $- == *i* ]]; then
  select_project
fi
