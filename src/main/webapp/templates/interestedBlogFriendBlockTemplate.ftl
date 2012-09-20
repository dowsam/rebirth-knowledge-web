<#setting number_format="#">
<#list interestedUser?if_exists as item>
<li>
                        <div class="zyb_info">
                            <div class="zyb_pho"><img src="images/tx/05.jpg" /></div>
                            <div class="zby_r">
                                <div class="zyb_id">${item.userName}</div>
                                <span><img src="images/xx.gif" /></span>
                                <ul>
                                	<#list item.tagBelongUserEntities?if_exists as tag>
                                		<li>${tag.tag.tagName}</li>
                                	</#list>
                                </ul>
                            </div>
                        </div>
                         <div class="clear"></div>
                          <div class="zyb_xq">标签是自定义描述自己职业、兴趣爱好的关键词，让更多人找到你，让你找到更多志同道合者</div>
                          <div id="zyb_btn"><a href="#" onclick="addBlogUser('${item.id}')">&nbsp;&nbsp;</a></div>
</li>
</#list>