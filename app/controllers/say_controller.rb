class SayController < ApplicationController

  before_filter :get_time_hms, :only => [:hello]
  before_filter :get_time_s, :only => [:goodbye]
  before_filter :list_files, :only => [:hello] 

  def get_time_hms
    @time = Time.now.to_s(:hours_minutes_seconds)
  end
  
  def get_time_s
    @time = Time.now.to_s(:ss)
  end
  
  def list_files
    @files = Dir.glob('*')
  end

  def hello
  end

  def goodbye
  end

end
