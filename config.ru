# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
require 'active_support/core_ext/hash'
run Rails.application
