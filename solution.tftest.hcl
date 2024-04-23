variables {
  env = "dev"
}

run "plan" {
  command = plan
  module {
    source = "./modules/vpc"
  }
  assert {
    condition     = module.vpc.network_name == var.env
    error_message = "Invalid network name"
  }
}
