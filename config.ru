require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride #allows us to send a PATCH request/edit
use SessionController
use PlantsController
use UsersController
run ApplicationController

#this file details to rack the environment requirements of the application and start the application