# Run from root directory of the repo.
# Then preview updates at http://localhost:4000
cd ../

echo "Starting Jekyll process"
bundle exec jekyll serve

lastExitCode=`echo $?`

if [ $lastExitCode -ne 0 ]
then
    echo "-----------------------------------------------"
    echo 'ERROR: Failed to start service'
    # Get pid of first output line of jekyll service
    jekyllPid="$(ps aux | grep "/jekyll" | awk '{print $2; exit}')"

    echo "Killing jekyll process at PID: $jekyllPid"
    kill -9 $jekyllPid

    echo "Restarting Jekyll process"
    bundle exec jekyll serve
    echo "-----------------------------------------------"
fi
