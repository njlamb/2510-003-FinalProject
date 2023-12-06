#!/usr/bin/env bash

playbook_path="/home/njlamb42/FinalProject/ansible_playbooks"

read -p "Enter the environment name (dev, prod, test): " environment_name

playbook_name="${environment_name}_playbook.yml"

playbook_file="${playbook_path}/${playbook_name}"

# Check if the playbook file exists
if [ -f "$playbook_file" ]; then
    # Run the playbook
    ansible-playbook "$playbook_file"

    # Check if the playbook was successful or failed
    if [ $? -eq 0 ]; then
        echo "Playbook execution successful."
    else
        echo "Playbook execution failed."
    fi
else
    echo "Error: Playbook not found at ${playbook_file}"
fi
