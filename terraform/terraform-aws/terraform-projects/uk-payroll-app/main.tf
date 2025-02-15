module "uk_payroll" {
  source = "../modules/payroll-app"
  app_region = "us-west-2"
  ami = "ami-35e140119877avm"
}