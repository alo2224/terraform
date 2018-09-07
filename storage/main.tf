resource "random_id" "randomized_number" {
    byte_length = 2
}

resource "aws_s3_bucket" "tf_bucket" {
    bucket = "${var.bucket_name}-${random_id.randomized_number.dec}"
    acl = "private"
    force_destroy = true
    
    tags {
        Name = "tf_bucket"
    }
}