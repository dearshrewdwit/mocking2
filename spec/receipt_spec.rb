require 'receipt'

describe Receipt do
  it "prints a receipt" do
    receipt = Receipt.new
    expect { receipt.print }.to output("THANKS SO MUCH!\n").to_stdout
  end
end
