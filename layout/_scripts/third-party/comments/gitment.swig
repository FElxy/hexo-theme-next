{% if not (theme.duoshuo and theme.duoshuo.shortname)
  and not theme.duoshuo_shortname
  and not theme.disqus_shortname
  and not theme.hypercomments_id
  and not theme.gentie_productKey
  and not theme.youyan_uid %}


<link rel="stylesheet" href="https://imsun.github.io/gitment/style/default.css">
<script src="https://imsun.github.io/gitment/dist/gitment.browser.js"></script>
<script>
var gitment = new Gitment({
  //id: '页面 ID', // 可选。默认为 location.href
  owner: 'felxy',
  repo: '{{theme.gitment_repo}}',
  oauth: {
    client_id: '{{theme.gitment_oauth.client_id}}',
    client_secret: '{{theme.gitment_oauth.client_secret}}',
  },
})
gitment.render('comments')
</script>

{% endif %}