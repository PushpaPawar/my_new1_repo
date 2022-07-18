resource "aws_s3_bucket" "state_file_bucket"{
     bucket = "talent-academy-pushpa-labs-tfstates"
     tags = {
          Name = "talent-academy-pushpa-labs-tfstates"
          Environment = "Labs"

        }

     lifecycle {
        prevent_destroy = true
        }
}

resource "aws_s3_bukcet_versioning" "version_my_bucket" {

     bucket = aws_s3_bucket.state_file_bucket.id

     versioning_configuration {
        state = "Enabled"
     }
     }


