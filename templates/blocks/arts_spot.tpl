<{if $block.display != 0}>
    <{if $block.showspotlight != 1 }>
        <{foreach item=art from=`$block.artdatas` key=key}>
            <{if $key == 1}>
                <ul>
            <{/if}>
            <li>
                <a href="<{$xoops_url}>/modules/<{$block.moduledir}>/article.php?articleID=<{$art.articleID}>"><{$art.subhead}></a>
                [<{$art.new}>]
            </li>
        <{/foreach}>
        <{if $key >= 1}>
            </ul>
        <{/if}>
    <{else}>
        <{if $block.verticaltemplate == 1 }>
            <{foreach item=art from=`$block.artdatas` key=key }>
                <{if $key == 1 }>
                    <div style="font-size: 12px; font-weight: bold; background-color: #ccc; padding: 2px 6px; margin: 0;">
                        <a
                                href="<{$xoops_url}>/modules/<{$block.moduledir}>/column.php?columnID=<{$art.column.columnID}>"><{$art.column.name}></a>
                    </div>
                    <h4 style="margin: 6px 0;"><a
                                href="<{$xoops_url}>/modules/<{$block.moduledir}>/article.php?articleID=<{$art.articleID}>"><{$art.headline}></a>
                    </h4>
                    <{if $block.showdateask == 1}>
                        <div style="font-size: xx-small; margin: 0 0 6px 0;"><{$art.date}></div><{/if}>
                    <{if $block.showbylineask == 1}><{$smarty.const._MB_SOAPBOX_BY}><{$art.authorname}><br><{/if}>
                    <div style="margin: 8px 0 2px 0;">
                        <{if $block.showpicask == 1}>
                            <{if $art.column.colimage != "blank.png" }>
                                <div style="float: left; width: 80px; margin-right: 10px; border: 1px solid black; ">
                                    <img src="<{$xoops_url}>/<{$block.sbuploaddir}>/<{$art.column.colimage}>"
                                         width="80"/></div>
                            <{/if}>
                        <{/if}>
                        <{$art.teaser}></div>
                    <div style="height: 0; clear: both;"></div>
                    <{if $block.showstatsask == 1}>
                        <div style="font-size: xx-small; margin-top: 4px;"><{$smarty.const._MB_SOAPBOX_HIT}><{$art.counter}><{$smarty.const._MB_SOAPBOX_RATE}><{$art.rating}><{$smarty.const._MB_SOAPBOX_VOTE}><{$art.votes}></div><{/if}>
                <{/if}>
                <{if $key == 2 }>
                    <div style="font-size: 12px; font-weight: bold; background-color: #ccc; padding: 2px 6px; margin: 6px 0 0 0;">
                        <a
                                href="<{$xoops_url}>/modules/<{$block.moduledir}>/index.php"><{$smarty.const._MB_SOAPBOX_MOREHERE}></a>
                    </div>
                    <ul>
                <{/if}>
                <{if $key >= 2 }>
                    <li>
                        <a href="<{$xoops_url}>/modules/<{$block.moduledir}>/article.php?articleID=<{$art.articleID}>"><{$art.subhead}></a>
                        [<{$art.new}>]
                    </li>
                <{/if}>
            <{/foreach}>
            <{if $key >= 2 }>
                </ul>
            <{/if}>
        <{elseif verticaltemplate == 0}>
            <{foreach item=art from=`$block.artdatas` key=key}>
                <{if $key == 1 }>
                    <div style="float:left; width: 48%; margin-right: 10px;">
                        <div style="font-size: 12px; font-weight: bold; background-color: #ccc; padding: 2px 6px; margin: 0;">
                            <a
                                    href="<{$xoops_url}>/modules/<{$block.moduledir}>/column.php?columnID=<{$art.column.columnID}>"><{$art.column.name}></a>
                        </div>
                        <h4 style="margin: 6px 0;"><a
                                    href="<{$xoops_url}>/modules/<{$block.moduledir}>/article.php?articleID=<{$art.articleID}>"><{$art.headline}></a>
                        </h4>

                        <{if $block.showdateask == 1}>
                            <div style="font-size: xx-small; margin: 0 0 6px 0;"><{$art.date}></div><{/if}>
                        <{if $block.showbylineask == 1}><{$smarty.const._MB_SOAPBOX_BY}><{$art.authorname}><br><{/if}>

                        <div style="margin: 8px 0 2px 0;">
                            <{if $block.showpicask == 1}>
                                <{if $art.column.colimage != "blank.png" }>
                                    <div style="float: left; width: 80px; margin-right: 10px; border: 1px solid black; ">
                                        <img src="<{$xoops_url}>/<{$block.sbuploaddir}>/<{$art.column.colimage}>"
                                             width="80"/></div>
                                <{/if}>
                            <{/if}>
                            <{$art.teaser}></div>
                        <div style="height: 0; clear: both;"></div>
                        <{if $block.showstatsask == 1}>
                            <div style="font-size: xx-small; margin-top: 4px;"><{$smarty.const._MB_SOAPBOX_HIT}><{$art.counter}><{$smarty.const._MB_SOAPBOX_RATE}><{$art.rating}><{$smarty.const._MB_SOAPBOX_VOTE}><{$art.votes}></div><{/if}>
                    </div>
                <{/if}>
                <div>
                <{if $key == 2 }>
                    <div style="font-size: 12px; font-weight: bold; background-color: #ccc; padding: 2px 6px; margin: 0;">
                        <a
                                href="<{$xoops_url}>/modules/<{$block.moduledir}>/index.php"><{$smarty.const._MB_SOAPBOX_MOREHERE}></a>
                    </div>
                    <ul>
                <{/if}>
                <{if $key >= 2 }>
                    <li>
                        <a href="<{$xoops_url}>/modules/<{$block.moduledir}>/article.php?articleID=<{$art.articleID}>"><{$art.subhead}></a>
                        [<{$art.new}>]
                    </li>
                <{/if}>
            <{/foreach}>
        <{if $key >= 2 }>
            </ul>
        <{/if}>
            </div>
            <div style="height: 0; clear: both;"></div>
        <{/if}>
    <{/if}>
<{elseif $block.diaplay == 0}>
    <div style="font-size: 12px; font-weight: bold; background-color: #ccc; padding: 2px 6px; margin: 0;"><{$smarty.const._MB_SOAPBOX_NOTHINGYET}></div>
<{/if}>
