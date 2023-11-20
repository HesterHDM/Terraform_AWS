variable "ec2"{
	type = object({
		count = number
		ami = string
		type = string
		key = string
})
default={
	count = 5
	ami = "ami-0fc5d935ebf8bc3bc"
	type = "t2.micro"
	key = "Terraform"
}
}
