#encoding: utf-8

require "spec_helper"

describe "Mongoid::VirtualMultiParameterAttributes" do
  
  context "when dealing with Time multi-parameter attributes" do

    let :time_event do
      valid_starts_at_time =
        {
          "starts_at_time(1i)" => "2011",
          "starts_at_time(2i)" => "11",
          "starts_at_time(3i)" => "29",
          "starts_at_time(4i)" => "10",
          "starts_at_time(5i)" => "00"
        }
      Event.new(valid_starts_at_time)
    end
  
    describe "on creation" do
      it "should set starts_at_time as a virtual Time column" do
        time_event.starts_at_time.class.should_not be_nil
      end
      it "should have starts_at_time property of type Time" do
        time_event.starts_at_time.class.should == Time
      end
      it "should not persist the starts_at_time property" do
        time_event.save
        Event.last.starts_at_time.should be_nil
      end
    end

  end # of Time context

  context "when dealing with Date multi-parameter attributes" do

    let :date_event do
      valid_starts_at_date =
        {
          "starts_at_date(1i)" => "2011",
          "starts_at_date(2i)" => "11",
          "starts_at_date(3i)" => "29"
        }
      Event.new(valid_starts_at_date)
    end
  
    describe "on creation" do
      it "should set starts_at_date as a virtual Date column" do
        date_event.starts_at_date.class.should_not be_nil
      end
      it "should have starts_at_date property of type Time (even though it is a Date)" do
        date_event.starts_at_date.class.should == Date
      end
      it "should not persist the starts_at_date property" do
        date_event.save
        Event.last.starts_at_date.should be_nil
      end
    end

  end # of Date context

  context "when dealing with DateTime multi-parameter attributes" do

    let :date_time_event do
      valid_starts_at_time =
        {
          "starts_at_time(1i)" => "2011",
          "starts_at_time(2i)" => "11",
          "starts_at_time(3i)" => "29",
          "starts_at_time(4i)" => "10",
          "starts_at_time(5i)" => "00"
        }
      Event.new(valid_starts_at_time)
    end
  
    describe "on creation" do
      it "should set starts_at_time as a virtual Time column" do
        date_time_event.starts_at_time.class.should_not be_nil
      end
      it "should have starts_at_time property of type Time" do
        date_time_event.starts_at_time.class.should == Time
      end
      it "should not persist the starts_at_time property" do
        date_time_event.save
        Event.last.starts_at_time.should be_nil
      end
    end

  end # of DateTime context

end
