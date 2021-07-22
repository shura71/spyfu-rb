module SpyFu
  module Api
    class Keywords < Base
      # More information: https://www.spyfu.com/apis/keyword_api/related/getRelatedKeywords
      BASE_ENDPOINT = 'keyword_api'

      # Get list of related keywords
      # t = spyfu.keywords_api.related_keywords(:query => 'madison square garden', :countryCode => 'US', :pageSize => 50, :sortBy => 'searchvolume', :api_key => '....')
      # JSON.parse(t.body)
      def related_keywords(params)
        send_get "related/getRelatedKeywords", params
      end

      # Get list of questions related to keyword
      def question_related_keywords(params)
        send_get "related/getQuestionKeywords", params
      end
      
      # Get list of transactional keywords related to keyword
      def transactional_related_keywords(params)
        send_get "related/getTransactionKeywords", params
      end

    end
  end
end
