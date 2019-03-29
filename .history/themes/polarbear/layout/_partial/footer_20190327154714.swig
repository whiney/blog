<span class="copyright-year">
    {% set current = date(Date.now(), "YYYY") %}
        &copy;
    {% if theme.since and theme.since != current %}
        {{ theme.since }} -
    {% endif %}
    {{ current }}
    <span class="footer-author">{{ config.author }}.</span>
    <span class="power-by">
        {{ __('footer.powered', '<a class="hexo-link" href="https://hexo.io/">Hexo</a> and <a class="theme-link" href="http://www.beian.gov.cn/">37010202001628</a>') }}
    </span>
</span>
