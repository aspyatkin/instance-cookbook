require 'etc'

module ChefCookbook
  module Instance
    class Helper
      def initialize(node)
        @node = node
      end

      def root
        @node['current_user']
      end

      def user
        ::ENV['SUDO_USER']
      end

      def user_home
        ::Etc.getpwnam(user).dir
      end

      def group
        ::Etc.getgrgid(::Etc.getpwnam(user).gid).name
      end

      def fqdn
        @node['automatic']['fqdn'] || @node['automatic']['ipaddress']
      end
    end
  end
end
