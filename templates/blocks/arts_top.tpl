<ul>
    <{foreach item=toparticles from=$block.toparticles}>
        <li><a href="<{$xoops_url}>/modules/<{$toparticles.dir}>/article.php?articleID=<{$toparticles.id}>"
               title="[<{$smarty.const._MB_SOAPBOX_TIMESREAD}><{$toparticles.new}>]"><{$toparticles.linktext}></a></li>
    <{/foreach}>
</ul>
