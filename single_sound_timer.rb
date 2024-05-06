def timer_with_beep(number)
  puts "Timer started for #{number} minute#{'s' if number > 1}."
  sleep(number * 60)

  end_time = Time.now.strftime('%H:%M')
  puts "Time's up at #{end_time}!"
  `say "Let's go"`
end

def truncate_if_no_float(number)
  number.to_i == number.to_f ? number.to_i : number.to_f
end

number = gets.chomp
system 'clear'

timer_with_beep(truncate_if_no_float(number))
