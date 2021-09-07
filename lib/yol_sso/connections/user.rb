module YolSso
  module Connection
    module User
      def get_user(userid)
        JSON.parse(redis.get("userinfo_#{userid}")) rescue nil
      end

      private

      def send_url
        "#{host}messages"
      end
    end
  end
end
