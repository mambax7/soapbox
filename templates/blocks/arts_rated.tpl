<ul>
    <{foreach item=artlink from=$block.artslist}>
        <li><a href="<{$xoops_url}>/modules/<{$artlink.dir}>/article.php?articleID=<{$artlink.id}>"
               title="[<{$smarty.const._MB_SOAPBOX_CALIF}><{$artlink.new}>. <{$smarty.const._MB_SOAPBOX_VOTOS}><{$artlink.votes}>]"><{$artlink.linktext}></a>
        </li>
    <{/foreach}>
</ul>
