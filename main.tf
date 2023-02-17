module "vpc-net" {
    source = "github.com/mikey-19961997/MODULE/modules/vpc-net"
    vpc_details = {
        Name = "mikey-vpc1"
        cidr_block = "192.168.0.0/16"
    }

    subnet_details = {
        Name = ["m1","m2","m3","m4"]
    }
}

output "subnetsno" {
    value = module.vpc-net.subnetcount
}