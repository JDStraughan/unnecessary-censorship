class String
  
  # i18n of response text
  # this should probably be refactored to a yaml file
  @@responses = {
    :en_us => {
      :present_participle => '****ing',
      :verb => '****'
    }
  }

  def unnecessarily_censor(lang = 'en_us')
    
    # Get string sans punctuation
    text = self.gsub(/[[:punct:]]/,"").split
    
    # Get path to current file location
    current_dir = File.expand_path File.dirname(__FILE__)
    
    # Pass 1 - look for present_participles
    matches = find_matches(text, "#{current_dir}/#{lang}/present_participles.txt")
    if matches.count > 0
      return self.sub(matches.sample, @@responses[:en_us][:present_participle]) 
    end

    # Pass 2 - look for other verbs
    matches = find_matches(text, "#{current_dir}/#{lang}/verbs.txt")
    if matches.count > 0
      return self.sub(matches.sample, @@responses[:en_us][:verb])
    end
    
    # Pass 3 - look for adjectives
    matches = find_matches(text, "#{current_dir}/#{lang}/adjectives.txt")
    if matches.count > 0
      sample = matches.sample
      return self.sub(sample, "*" * sample.length)
    end
    
    return self
    
  end  
  
  private
  
  # Get array of matches in string from file
  def find_matches(text, filename)
    targets = File.open(filename, 'r') { |file| file.readlines.collect { |line| line.chomp } }
    return targets.select { |x| x if text.include?(x) }
  end

end