echo "echo Restoring environment" > "/home/dessera/Desktop/CppWorkspace/Projects/IMtrans/build/Release/generators/deactivate_conanbuildenv-release-x86_64.sh"
for v in 
do
    is_defined="true"
    value=$(printenv $v) || is_defined="" || true
    if [ -n "$value" ] || [ -n "$is_defined" ]
    then
        echo export "$v='$value'" >> "/home/dessera/Desktop/CppWorkspace/Projects/IMtrans/build/Release/generators/deactivate_conanbuildenv-release-x86_64.sh"
    else
        echo unset $v >> "/home/dessera/Desktop/CppWorkspace/Projects/IMtrans/build/Release/generators/deactivate_conanbuildenv-release-x86_64.sh"
    fi
done

