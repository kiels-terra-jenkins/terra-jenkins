variable "region" {
  default = "us-west-1"
}
variable "ec2_count_i1" {
  default = 1
}

#genral purpose burstable instances; ebs only storage.
variable "t2_instances" {
  type = map(string)
  default = {
    #vCPU 1, mem 0.5,net=low
    t2_nano = "t2.nano"
    # vCPU 1, mem 1, net=low-mod, free tier
    t2_micro = "t2.micro"
    # vCPU 2, mem 4, net=low-mod
    t2_medium = "t2.medium"
    # vCPU 2, mem 8, net=low-mod
    t2_large = "t2.large"
  }