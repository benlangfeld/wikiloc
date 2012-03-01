require 'spec_helper'

module Wikiloc
  describe InfoGetter do

    context "Cutting off numbers (and the rest of the string) from strings" do
      subject { InfoGetter.new nil, nil}

      context "Cutting off the end of the string 'Hello123' (from the number on)" do
        it "string 'Hello123' cut off from the number on ===> 'Hello'" do
          subject.cut_number_off('Hello123').should == 'Hello'
        end
      end

      context "Cutting off the end of the string 'Hello123 (from the number on)" do
        it "string 'Hello123aaa' cut off from the number on ===> 'Hello'" do
          subject.cut_number_off('Hello123aaa').should == 'Hello'
        end
      end

      context "Cutting off the end of the string '123' (from the number on)" do
        it "string '123' cut off from the number on ===> ''" do
          subject.cut_number_off('123').should == ''
        end
      end
    end

    context "looking for the capital of" do
      subject { InfoGetter.new country, "capital" }

      context "Countries that are being found on the first attempt" do
        context "France" do
          let(:country) { 'France' }

          its(:get_info) { should == "Paris" }

          it "finds the capital of France on the wikipedia table" do
            subject.find_data_in_table("//*[.='Capital']").should == "Paris"
          end
        end


        context "looking for the capital of Israel" do
          let(:country) { 'Israel' }

          its(:get_info) { should == "Jerusalem" }

          it "finds the capital of Israel on the wikipedia table" do
            subject.find_data_in_table("//*[.='Capital']").should == "Jerusalem"
          end
        end

        context "looking for the capital of Germany" do
          let(:country) { 'Germany' }

          its(:get_info) { should == "Berlin" }

          it "finds the capital of Germany on the wikipedia table" do
            subject.find_data_in_table("//*[.='Capital']").should == "Berlin"
          end
        end
      end
    end
  end
end
