function myFunc() {
    echo "The first arg is" $1
    echo "The second arg is" $2
    echo "All the args are" $@
}

myFunc abc 123 xyz
