describe SiteGenerator do 
  
  describe '#initialize' do 
    it 'takes a path to generate the site in' do 
      site_generator = SiteGenerator.new("tmp/_site")
    end 
  end 
  
  describe "#generate_index" do 
    it 'makes an index.html file within the path' do 
      site_generator = SiteGenerator.new("tmp/_site")
      
      site_generator.generate_index 
      
      expect(File).to.exist("#{site_generator.path}/index.html")
    end 
  end 
end 