Sys.setenv(RETICULATE_PYTHON = ".venv/bin/python3")
Sys.setenv(R_CONFIG_ACTIVE = "default") # Replace "default" with your config

library("dccvalidator")
run_app()
