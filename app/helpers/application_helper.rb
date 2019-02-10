module ApplicationHelper
    TITLE_PREFIX = 'ミラプリ管理 | '
    def page_title(title_suffix)
        title = TITLE_PREFIX + title_suffix
        title
    end

end
