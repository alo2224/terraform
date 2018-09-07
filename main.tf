provider "aws" {
    region = "${var.aws_region}"
}
module "storage"{
    source = "./storage/"
    bucket_name = "${var.bucket_name}"
}
module "networking"{
    source = "./networking/"
    vpc_cidr = "${var.vpc_cidr}"
    public_cidrs = "${var.public_cidrs}"
    accessip = "${var.accessip}"
}