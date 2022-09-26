for i in `ls lessons`
do
    cd lessons/$i
    terraform init
    terraform apply --auto-approve
    cd -
done

for i in `ls solutions`
do
    cd solutions/$i
    terraform init
    terraform apply --auto-approve
    cd -
done