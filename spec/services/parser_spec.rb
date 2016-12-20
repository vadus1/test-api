require 'rails_helper'

RSpec.describe Parser, type: :service  do
  it "returns a scraped html" do
    fake_html = <<-EOS
    <!doctype html>
    <html>
      <head>
          <title>Example</title>
      </head>

    <body>
      <div>
          <h1>Example</h1>
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
          <p><a href="https://github.com/">Github</a></p>
      </div>
    </body>
    </html>
    EOS

    parse = {
      "a"=>["https://github.com/"],
      "h1"=>["Example"],
      "h2"=>[],
      "h3"=>[]
    }
    Parser.any_instance.stubs(:html).returns(fake_html)

    expect(Parser.new('http://github.com').call.to_hash["a"]).to eq(parse["a"])
    expect(Parser.new('http://github.com').call.to_hash["h1"]).to eq(parse["h1"])
    expect(Parser.new('http://github.com').call.to_hash["h2"]).to eq(parse["h2"])
    expect(Parser.new('http://github.com').call.to_hash["h3"]).to eq(parse["h3"])
  end
end
