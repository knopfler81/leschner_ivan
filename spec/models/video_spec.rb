require 'rails_helper'

 RSpec.describe Video, type: :model do

	context "When created" do 
		my_video =  Video.new(url: "https://www.youtube.com/watch?v=Yozj4ZB98Gg")

		it { should validate_presence_of(:url) }
		it { should allow_value("https://www.youtube.com/watch?v=Yozj4ZB98Gg").for(:url) }
		it { should_not allow_value("https://www.youtube.com=Yozj4ZB").for(:url) }

		it "transform the youtube url into embed" do 
			my_video.embed
			my_video.save

			expect(my_video.url).to eq("https://www.youtube.com/embed/Yozj4ZB98Gg")
		end
	end
end
