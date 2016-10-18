class StringDemystifier

	def demystify
	  raw_string = "!YTIRCO!IQIIQIDEMGMMIM FO YMJMMSM!RA !EGEEJEHT ROEOOSOF PAEJEEBEL TN!AIKIITIG ENVNNMNO ,GQGGCGN!ILEKIZIISIRT A RJRRDROF PETOTTJTS LLZLLEL!AMSXSSMS ENODOOSO"
	  result = []
    puts raw_string
	  raw_string.split(' ').each do |raw|
	  	@raw = raw
	  	first_condition
	  	second_condition
	  	third_condition
	   result << @raw
    end
    result = result.reverse
	  puts "################ My Result: #{result.join(' ')}"
	end

	def first_condition
		check,inx,val = @raw.check_left_right_combo
	  while check
	  	check,inx,val = @raw.check_left_right_combo
	    @raw[inx] = val
	    check,inx,val = @raw.check_left_right_combo
	  end
	end

	def second_condition
		check,@raw = @raw.check_sequence if @raw.length >= 6
    while check
	  	check,@raw = @raw.check_sequence
	  end
	end

  def third_condition
    @raw = @raw.gsub("!","").reverse
  end
end


class String
	def check_left_right_combo
		self.each_char.with_index do |v,i| 
			k = self[i..i+2]
	    if k[0] == k[2] and k[0] != k[1]
	      return true,i+1,k[0]
	    end
		end
		return false 
	end

	def check_sequence
		self.each_char.with_index do |v,i|
			ch = self[i..i+5].gsub("\"","")
			if ch.count(ch[0]) == 6
				self[i..i+5] = ch[0]
				return true,self
			end			
		end
		return false,self
	end
  
  def check_exclamation
    str = self.gsub("!","")
  end
end

s = StringDemystifier.new
s.demystify
