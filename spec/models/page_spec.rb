require 'rails_helper'

RSpec.describe Page, type: :model do
  describe "Attributes" do
    it { is_expected.to have_attribute :url }
    it { is_expected.to have_attribute :content }
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of :url }
  end

  describe "Callbacks" do
    it "expects to set content attribute before save" do
      subject = Page.new(url: 'http://www.example.com')
      subject.save
      expect(subject.reload.content).not_to be_nil
    end
  end
end
