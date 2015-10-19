require 'noip'
namespace :noip do

  desc "Push a dynamic DNS update to noip"
  task :update do
    Noip.update
  end

end
