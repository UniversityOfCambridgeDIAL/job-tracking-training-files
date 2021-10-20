echo "============================================================================"
echo "	Updating Application"
echo "============================================================================"
OLD_HEAD=$(git rev-parse HEAD)
echo current commit hash is $OLD_HEAD
echo "fetching updates"
git pull --rebase origin
NEW_HEAD=$(git rev-parse HEAD)
if [ ! $OLD_HEAD = $NEW_HEAD ]
then
    echo new commit hash is $NEW_HEAD
	source hooks/update_hook.sh
fi

echo "============================================================================"
echo "	Update Complete"
echo "============================================================================"

