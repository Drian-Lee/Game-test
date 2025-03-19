@tool
extends RefCounted

# CLASS GOT AUTOGENERATED DON'T CHANGE MANUALLY. CHANGES CAN BE OVERWRITTEN EASILY.

class_name TwitchGetUnbanRequestsResponse

## A list that contains information about the channel's unban requests.
var data: Array[Data]:
	set(val):
		data = val;
		changed_data["data"] = [];
		if data != null:
			for value in data:
				changed_data["data"].append(value.to_dict());
## Contains information used to page through a list of results. The object is empty if there are no more pages left to page through.
var pagination: Pagination:
	set(val):
		pagination = val;
		if pagination != null:
			changed_data["pagination"] = pagination.to_dict();

var changed_data: Dictionary = {};

static func from_json(d: Dictionary) -> TwitchGetUnbanRequestsResponse:
	var result = TwitchGetUnbanRequestsResponse.new();
	if d.has("data") && d["data"] != null:
		for value in d["data"]:
			result.data.append(Data.from_json(value));
	if d.has("pagination") && d["pagination"] != null:
		result.pagination = Pagination.from_json(d["pagination"]);
	return result;

func to_dict() -> Dictionary:
	return changed_data;

func to_json() -> String:
	return JSON.stringify(to_dict());

## 
class Data extends RefCounted:
	## Unban request ID.
	var id: String:
		set(val):
			id = val;
			changed_data["id"] = id;
	## User ID of broadcaster whose channel is receiving the unban request.
	var broadcaster_id: String:
		set(val):
			broadcaster_id = val;
			changed_data["broadcaster_id"] = broadcaster_id;
	## The broadcaster's display name.
	var broadcaster_name: String:
		set(val):
			broadcaster_name = val;
			changed_data["broadcaster_name"] = broadcaster_name;
	## The broadcaster's login name.
	var broadcaster_login: String:
		set(val):
			broadcaster_login = val;
			changed_data["broadcaster_login"] = broadcaster_login;
	## User ID of moderator who approved/denied the request.
	var moderator_id: String:
		set(val):
			moderator_id = val;
			changed_data["moderator_id"] = moderator_id;
	## The moderator's login name.
	var moderator_login: String:
		set(val):
			moderator_login = val;
			changed_data["moderator_login"] = moderator_login;
	## The moderator's display name.
	var moderator_name: String:
		set(val):
			moderator_name = val;
			changed_data["moderator_name"] = moderator_name;
	## User ID of the requestor who is asking for an unban.
	var user_id: String:
		set(val):
			user_id = val;
			changed_data["user_id"] = user_id;
	## The user's login name.
	var user_login: String:
		set(val):
			user_login = val;
			changed_data["user_login"] = user_login;
	## The user's display name.
	var user_name: String:
		set(val):
			user_name = val;
			changed_data["user_name"] = user_name;
	## Text of the request from the requesting user.
	var text: String:
		set(val):
			text = val;
			changed_data["text"] = text;
	## Status of the request. One of:      * pending * approved * denied * acknowledged * canceled
	var status: String:
		set(val):
			status = val;
			changed_data["status"] = status;
	## Timestamp of when the unban request was created.
	var created_at: Variant:
		set(val):
			created_at = val;
			changed_data["created_at"] = created_at;
	## Timestamp of when moderator/broadcaster approved or denied the request.
	var resolved_at: Variant:
		set(val):
			resolved_at = val;
			changed_data["resolved_at"] = resolved_at;
	## Text input by the resolver (moderator) of the unban. request
	var resolution_text: String:
		set(val):
			resolution_text = val;
			changed_data["resolution_text"] = resolution_text;

	var changed_data: Dictionary = {};

	static func from_json(d: Dictionary) -> Data:
		var result = Data.new();
		if d.has("id") && d["id"] != null:
			result.id = d["id"];
		if d.has("broadcaster_id") && d["broadcaster_id"] != null:
			result.broadcaster_id = d["broadcaster_id"];
		if d.has("broadcaster_name") && d["broadcaster_name"] != null:
			result.broadcaster_name = d["broadcaster_name"];
		if d.has("broadcaster_login") && d["broadcaster_login"] != null:
			result.broadcaster_login = d["broadcaster_login"];
		if d.has("moderator_id") && d["moderator_id"] != null:
			result.moderator_id = d["moderator_id"];
		if d.has("moderator_login") && d["moderator_login"] != null:
			result.moderator_login = d["moderator_login"];
		if d.has("moderator_name") && d["moderator_name"] != null:
			result.moderator_name = d["moderator_name"];
		if d.has("user_id") && d["user_id"] != null:
			result.user_id = d["user_id"];
		if d.has("user_login") && d["user_login"] != null:
			result.user_login = d["user_login"];
		if d.has("user_name") && d["user_name"] != null:
			result.user_name = d["user_name"];
		if d.has("text") && d["text"] != null:
			result.text = d["text"];
		if d.has("status") && d["status"] != null:
			result.status = d["status"];
		if d.has("created_at") && d["created_at"] != null:
			result.created_at = d["created_at"];
		if d.has("resolved_at") && d["resolved_at"] != null:
			result.resolved_at = d["resolved_at"];
		if d.has("resolution_text") && d["resolution_text"] != null:
			result.resolution_text = d["resolution_text"];
		return result;

	func to_dict() -> Dictionary:
		return changed_data;

	func to_json() -> String:
		return JSON.stringify(to_dict());

## Contains information used to page through a list of results. The object is empty if there are no more pages left to page through.
class Pagination extends RefCounted:
	## The cursor used to get the next page of results. Use the cursor to set the request’s after query parameter.
	var cursor: String:
		set(val):
			cursor = val;
			changed_data["cursor"] = cursor;

	var changed_data: Dictionary = {};

	static func from_json(d: Dictionary) -> Pagination:
		var result = Pagination.new();
		if d.has("cursor") && d["cursor"] != null:
			result.cursor = d["cursor"];
		return result;

	func to_dict() -> Dictionary:
		return changed_data;

	func to_json() -> String:
		return JSON.stringify(to_dict());

