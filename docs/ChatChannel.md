# Esi::ChatChannel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | [**Array&lt;ChatChannelAllow&gt;**](ChatChannelAllow.md) | allowed array | 
**blocked** | [**Array&lt;ChatChannelBlock&gt;**](ChatChannelBlock.md) | blocked array | 
**channel_id** | **Integer** | Unique channel ID. Always negative for player-created channels. Permanent (CCP created) channels have a positive ID, but don&#39;t appear in the API | 
**comparison_key** | **String** | Normalized, unique string used to compare channel names | 
**has_password** | **BOOLEAN** | Whether this is a password protected channel | 
**motd** | **String** | Message of the day for this channel | 
**muted** | [**Array&lt;ChatChannelMute&gt;**](ChatChannelMute.md) | muted array | 
**name** | **String** | Displayed name of channel | 
**operators** | [**Array&lt;ChatChannelOperator&gt;**](ChatChannelOperator.md) | operators array | 
**owner_id** | **Integer** | owner_id integer | 


