# Open File
 File.open('soccer.dat', 'r') do |f1|  
# Set winning values to arbitrary amounts
      wteam = 0
      wdiff = 9999
# Iterate through lines
   while line = f1.gets  
     #puts line  
# Parse relevant fields
     team = line[7..22]
     g_for = line[43..45]
     g_against = line[50..52]
     if g_for.to_i > 0
       #puts '*Team ' << team << ' Goals For ' << g_for  << ' Goals Aaginst ' << g_against  << ' Diff= '<<  (g_for.to_i - g_against.to_i).to_s
# update winning team if absolute diff is less than earlier entries
       if (g_for.to_i - g_against.to_i).abs < wdiff.abs
         wdiff = g_for.to_i - g_against.to_i 
         wteam = team
       end
      end
   end
   puts '***The winning team is ' << wteam.strip << ' the gaals for/against difference is ' <<  wdiff.abs.to_s
 end
