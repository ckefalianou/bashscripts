function select_project() {
  PS3="Select project: "
  options=("Project1" "Project1" "Nada")

  select opt in "${options[@]}"; do
    case $REPLY in
      1) cd ~/Desktop/Project1 && break ;;
      2) cd ~/Desktop/Project2 && break ;;
      3) cd ~ && break ;;
      *) echo "Invalid option. Try again."; continue ;;
    esac
  done
}

# Only show menu in interactive terminal (not on scripts)
if [[ $- == *i* ]]; then
  select_project
fi
