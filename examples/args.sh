echo "Arguments Given To Script:"
echo $@

echo "The First Argument Given Is:"
echo $1

if [[ $1 != "" ]]; then
    echo "I was given at least one argument!"
fi

for I in {1..10}; do
    echo $I
done

case $1 in
    help)
        echo doSomethingHere
        ;;
    hi)
        echo doSomethingElse
        ;;
    abc|123)
        echo doSomethingElseAsWell
        ;;
    *)
        echo "Hey, you didn't give me the correct argument!"
        ;;
esac
