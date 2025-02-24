local_branches=($(git for-each-ref --format='%(refname)' refs/heads/))
	current_branch=($(git branch --show-current))
	branch_index=0
	is_current=""
	COLOR='\033[0m'
	local_branches_actual=()
	echo "## LOCAL BRANCHES ##"
	echo ''
	for branch in "${local_branches[@]}"
	do

		branch_sed=$(echo $branch | sed '1s|^refs/heads/||')
		local_branches_actual+=(${branch_sed})

		if [[ "$current_branch" == "$branch_sed" ]]; then
			is_current="(current)"
			COLOR='\033[0;33m'
		else
			is_current=""
			COLOR='\033[0m'
		fi

		echo -e "${COLOR}$branch_index. $branch_sed $is_current"

		((branch_index=branch_index+1))
	done

	echo ''
	read -p "Choose branch by number and hit enter: " branch_choose_index

	if [[ $branch_choose_index -lt ${#local_branches_actual[@]} && $branch_choose_index -gt -1 ]]; then
		git checkout ${local_branches_actual[$branch_choose_index]}
	else
		echo "No such branch in the list. Thank you!"
	fi