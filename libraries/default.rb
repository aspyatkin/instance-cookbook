require 'etc'

module ChefCookbook
  module Instance
    class Helper
      def initialize(node)
        @node = node
      end

      def root_user
        @node['current_user']
      end

      def instance_user
        ::ENV['SUDO_USER']
      end

      def instance_user_home
        ::Etc.getpwnam(instance_user).dir
      end

      def instance_group
        ::Etc.getgrgid(::Etc.getpwnam(instance_user).gid).name
      end
    end
  end
end
