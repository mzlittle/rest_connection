#    This file is part of RestConnection
#
#    RestConnection is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    RestConnection is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with RestConnection.  If not, see <http://www.gnu.org/licenses/>.
#

class ServerEc2EbsVolume
  include  RightScale::Api::Base
  extend RightScale::Api::BaseExtend
  include RightScale::Api::Taggable
  extend RightScale::Api::TaggableExtend

  deny_methods :index, :update

  def resource_plural_name
    "component_ec2_ebs_volumes"
  end

  def resource_singular_name
    "component_ec2_ebs_volume"
  end

  def self.resource_plural_name
    "component_ec2_ebs_volumes"
  end

  def self.resource_singular_name
    "component_ec2_ebs_volume"
  end
end
