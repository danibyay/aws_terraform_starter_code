# aws terraform starter code

This is the terraform code necessary to start working with the AWS cloud and store the state as a remote state using S3 backend.

## File structure

        ┣ 📂bucketforstate
        ┃ ┣ 📜main.tf
        ┃ ┣ 📜provider.tf
        ┣ 📂project1
        ┃ ┣ 📜main.tf
        ┃ ┗ 📜provider.tf

On the Folder __buckerforstate__ I have resources to create a bucket and a dynamodb table for state locking, those resources are using a local state because they're the first thing I need to do, however, I prefer to have it in terraform rather than have to use the UI. Besides, this bucket and table can be reused for many other projects in the future, not just one.

On the Folder __project1__ there is an example of a simple EC2 instance resource, but this time the state will be remote using the bucket found on the first mentioned directory as the backend

## IAM access key

For this code to work you also need to have keys to connect with aws as env vars on in the config files

These files are not to be kept under source control

*.aws/config*

        [default]
        region = us-east-1

*.aws/credentials*

        [default]
        aws_access_key_id=******
        aws_secret_access_key=********
