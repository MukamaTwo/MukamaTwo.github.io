# Run from root directory of the repo.
# Then preview updates at http://localhost:4000

function startJekyllProcess() {

    echo; echo "$1tarting Jekyll process"
    bundle exec jekyll serve --drafts

    lastExitCode=`echo $?`

}

# Exit if not project root.
[ ! -f ./Gemfile ] && echo "Please run from project root tools/localhost.run.server.sh" && exit 1

# Start process
startJekyllProcess "S"

if [ $lastExitCode -ne 0 ]
then
    echo "-----------------------------------------------"
    error_found="FAIL: Starting service with error Code - $lastExitCode"
    echo $error_found

    # Get pid of jekyll service [and grep command]
    jekyllPid="$(ps aux | grep "/jekyll" | awk '{print $2}')"

    echo "Killing jekyll [and grep] processs at PIDs:"
    echo "$jekyllPid"
    echo

    kill -9 $jekyllPid

    startJekyllProcess "Res"

    if [ $lastExitCode -ne 0 ]
    then
        echo $error_found
    fi
    echo "-----------------------------------------------"
fi

echo "Done"
