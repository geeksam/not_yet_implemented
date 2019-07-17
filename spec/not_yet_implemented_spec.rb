RSpec.describe NotYetImplemented do
  it "has a version number" do
    expect(NotYetImplemented::VERSION).not_to be nil
  end

  it "defines a NotYetImplemented exception class" do
    expect( described_class ).to be_a( Class )
    expect( described_class.ancestors ).to include( StandardError )
  end
end
