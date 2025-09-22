#terraform {
 # backend "s3" {
  #  bucket         = "my-terraform-state-bucket"  # Change this to your bucket name
   # key            = "infrastructure/terraform.tfstate"
    #region         = "eu-west-2"
    #encrypt        = true
    #dynamodb_table = "terraform-locks"
#  }
#}