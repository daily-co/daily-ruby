require 'spec_helper'

# RoomConfigEnableRecording is new in 1.1.0.
describe Daily::RoomConfigEnableRecording do
  it 'lists its oneOf types' do
    expect(described_class.openapi_one_of).to eq([:"Array<String>", :String])
  end

  it 'builds from a Array<String> value' do
    expect(described_class.build([
      "value"
    ])).to eq([
      "value"
    ])
  end

  it 'builds from a String value' do
    expect(described_class.build("value")).to eq("value")
  end
end
