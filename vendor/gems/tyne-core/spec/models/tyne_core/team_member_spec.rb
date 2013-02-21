require 'spec_helper'

describe TyneCore::TeamMember do
  describe :is_admin? do
    it "should return true of the team has admin privileges" do
      subject.stub(:team).and_return(stub_model(TyneCore::Team, :admin_privileges => true))
      subject.is_admin?.should be_true
    end
  end
end
