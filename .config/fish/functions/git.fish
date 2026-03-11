function clean_archived_tags --description 'Delete local archived/* tags older than 1 month'
    set -l cutoff (date -v -1m +%s)
    set -l tags (git tag -l 'archived/*')
    if test (count $tags) -eq 0
        echo "No local tags matching 'archived/*'."
        return 0
    end

    for tag in $tags
        set -l ts (git tag --format='%(creatordate:unix)' -l -- $tag 2>/dev/null | string trim)
        if test -z "$ts"
            echo "Skipping $tag (couldn't determine timestamp)"
            continue
        end

        if test $ts -lt $cutoff
            echo "Deleting $tag"
            git tag -d -- $tag
        end
    end
end
