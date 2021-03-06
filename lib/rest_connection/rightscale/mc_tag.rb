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
# You must have Beta v1.5 API access to use these internal API calls.
#
class McTag
  include RightScale::Api::Gateway
  extend RightScale::Api::GatewayExtend

  deny_methods :index, :show, :create, :destroy, :update

  def resource_plural_name
    "tags"
  end

  def resource_singular_name
    "tag"
  end

  def self.resource_plural_name
    "tags"
  end

  def self.resource_singular_name
    "tag"
  end

  def self.search(resource_name, tags, opts=nil) #, include_tags_with_prefix = false)
    parameters = { :resource_type => resource_name.to_s, :tags => tags }
    parameters.merge!(opts) unless opts.nil?
    result = connection.post("tags/by_tag", parameters)
  end

  def self.search_by_href(*resource_hrefs)
    connection.post("tags/by_resource", :resource_hrefs => resource_hrefs)
  end
  #TAGGABLE_RESOURCES = [ 'Server', 'Ec2EbsSnapshot', 'Ec2EbsVolume', 'Ec2Image', 'Image', 'ServerArray', 'Ec2Instance',
  #                        'Instance', 'Deployment', 'ServerTemplate', 'Ec2ServerTemplate' ]
  #
  # Tag.set( resource_href, tags ) where tags is an array of tags to set on the resource.
  def self.multi_add(resource_hrefs, tags)
    resource_hrefs = [resource_hrefs] unless resource_hrefs.is_a?(Array)
    connection.post("tags/multi_add", :resource_hrefs => resource_hrefs, :tags => tags)
  end

  def self.set(resource_hrefs, tags)
    self.multi_add(resource_hrefs, tags)
  end

  def self.multi_delete(resource_hrefs, tags)
    resource_hrefs = [resource_hrefs] unless resource_hrefs.is_a?(Array)
    connection.post("tags/multi_delete", :resource_hrefs => resource_hrefs, :tags => tags)
  end

  def self.unset(resource_hrefs, tags)
    self.multi_delete(resource_hrefs, tags)
  end
end
