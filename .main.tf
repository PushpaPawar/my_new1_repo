resource "aws_s3_bucket" "stat_file_bucket"{
     bucket = "Talent-Academy-pushpa-labs-tfstates"
     tags = {
          Name = "Talent-Academy-pushpa-labs-tfstates"
          Enviornment = "Labs"

        }

     lifecycle {
        prevent_destroy = true
        }
}