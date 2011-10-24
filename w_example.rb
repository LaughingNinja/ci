# Open File
 File.open('w_data.dat', 'r') do |f1|  
# Set winning values to arbitrary amounts
   wday = 0
   wdiff = 9999
# Iterate through lines
   while line = f1.gets  
     #puts line  
# Parse relevant fields
     day = line[1..3]
# check for valid entry
     if day.to_i > 0
       wmax = line[6..7]
       wmin = line[12..14]
       #puts '*Day ' << day << ' Max ' << wmax  << ' Min ' << wmin << ' Diff= '<<  (wmax.to_i - wmin.to_i).to_s
# update winning day if diff is less than earlier entries
       if (wmax.to_i - wmin.to_i).abs < wdiff.abs
        wdiff = wmax.to_i - wmin.to_i 
        wday = day
       end
     end
   end  
   puts '***The winning day is day ' << wday.to_s << ' the temperature difference is ' <<  wdiff.abs.to_s
 end
