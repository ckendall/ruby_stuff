def we_can(message, &blk)  
  test_success = blk.call == true  
  
  if test_success
    result = 'SUCCESS'
  else
    result = 'FAILURE'
  end
  
  puts "TEST: #{message} : STATUS #{result.to_s}"
  raise StandardError, message unless test_success
  
end