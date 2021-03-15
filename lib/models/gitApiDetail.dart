///测试地址返回值
// {
//   "current_user_url": "https://api.github.com/user",
//   "current_user_authorizations_html_url": "https://github.com/settings/connections/applications{/client_id}",
//   "authorizations_url": "https://api.github.com/authorizations",
//   "code_search_url": "https://api.github.com/search/code?q={query}{&page,per_page,sort,order}",
//   "commit_search_url": "https://api.github.com/search/commits?q={query}{&page,per_page,sort,order}",
//   "emails_url": "https://api.github.com/user/emails",
//   "emojis_url": "https://api.github.com/emojis",
//   "events_url": "https://api.github.com/events",
//   "feeds_url": "https://api.github.com/feeds",
//   "followers_url": "https://api.github.com/user/followers",
//   "following_url": "https://api.github.com/user/following{/target}",
//   "gists_url": "https://api.github.com/gists{/gist_id}",
//   "hub_url": "https://api.github.com/hub",
//   "issue_search_url": "https://api.github.com/search/issues?q={query}{&page,per_page,sort,order}",
//   "issues_url": "https://api.github.com/issues",
//   "keys_url": "https://api.github.com/user/keys",
//   "label_search_url": "https://api.github.com/search/labels?q={query}&repository_id={repository_id}{&page,per_page}",
//   "notifications_url": "https://api.github.com/notifications",
//   "organization_url": "https://api.github.com/orgs/{org}",
//   "organization_repositories_url": "https://api.github.com/orgs/{org}/repos{?type,page,per_page,sort}",
//   "organization_teams_url": "https://api.github.com/orgs/{org}/teams",
//   "public_gists_url": "https://api.github.com/gists/public",
//   "rate_limit_url": "https://api.github.com/rate_limit",
//   "repository_url": "https://api.github.com/repos/{owner}/{repo}",
//   "repository_search_url": "https://api.github.com/search/repositories?q={query}{&page,per_page,sort,order}",
//   "current_user_repositories_url": "https://api.github.com/user/repos{?type,page,per_page,sort}",
//   "starred_url": "https://api.github.com/user/starred{/owner}{/repo}",
//   "starred_gists_url": "https://api.github.com/gists/starred",
//   "user_url": "https://api.github.com/users/{user}",
//   "user_organizations_url": "https://api.github.com/user/orgs",
//   "user_repositories_url": "https://api.github.com/users/{user}/repos{?type,page,per_page,sort}",
//   "user_search_url": "https://api.github.com/search/users?q={query}{&page,per_page,sort,order}"
// }

class GitApiDetail {
  String currentUserUrl;
  String currentUserAuthorizationsHtmlUrl;
  String authorizationsUrl;
  String codeSearchUrl;
  String commitSearchUrl;
  String emailsUrl;
  String emojisUrl;
  String eventsUrl;
  String feedsUrl;
  String followersUrl;
  String followingUrl;
  String gistsUrl;
  String hubUrl;
  String issueSearchUrl;
  String issuesUrl;
  String keysUrl;
  String labelSearchUrl;
  String notificationsUrl;
  String organizationUrl;
  String organizationRepositoriesUrl;
  String organizationTeamsUrl;
  String publicGistsUrl;
  String rateLimitUrl;
  String repositoryUrl;
  String repositorySearchUrl;
  String currentUserRepositoriesUrl;
  String starredUrl;
  String starredGistsUrl;
  String userUrl;
  String userOrganizationsUrl;
  String userRepositoriesUrl;
  String userSearchUrl;

  GitApiDetail(
      {this.currentUserUrl,
        this.currentUserAuthorizationsHtmlUrl,
        this.authorizationsUrl,
        this.codeSearchUrl,
        this.commitSearchUrl,
        this.emailsUrl,
        this.emojisUrl,
        this.eventsUrl,
        this.feedsUrl,
        this.followersUrl,
        this.followingUrl,
        this.gistsUrl,
        this.hubUrl,
        this.issueSearchUrl,
        this.issuesUrl,
        this.keysUrl,
        this.labelSearchUrl,
        this.notificationsUrl,
        this.organizationUrl,
        this.organizationRepositoriesUrl,
        this.organizationTeamsUrl,
        this.publicGistsUrl,
        this.rateLimitUrl,
        this.repositoryUrl,
        this.repositorySearchUrl,
        this.currentUserRepositoriesUrl,
        this.starredUrl,
        this.starredGistsUrl,
        this.userUrl,
        this.userOrganizationsUrl,
        this.userRepositoriesUrl,
        this.userSearchUrl});

  GitApiDetail.fromJson(Map<String, dynamic> json) {
    currentUserUrl = json['current_user_url'];
    currentUserAuthorizationsHtmlUrl =
    json['current_user_authorizations_html_url'];
    authorizationsUrl = json['authorizations_url'];
    codeSearchUrl = json['code_search_url'];
    commitSearchUrl = json['commit_search_url'];
    emailsUrl = json['emails_url'];
    emojisUrl = json['emojis_url'];
    eventsUrl = json['events_url'];
    feedsUrl = json['feeds_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    hubUrl = json['hub_url'];
    issueSearchUrl = json['issue_search_url'];
    issuesUrl = json['issues_url'];
    keysUrl = json['keys_url'];
    labelSearchUrl = json['label_search_url'];
    notificationsUrl = json['notifications_url'];
    organizationUrl = json['organization_url'];
    organizationRepositoriesUrl = json['organization_repositories_url'];
    organizationTeamsUrl = json['organization_teams_url'];
    publicGistsUrl = json['public_gists_url'];
    rateLimitUrl = json['rate_limit_url'];
    repositoryUrl = json['repository_url'];
    repositorySearchUrl = json['repository_search_url'];
    currentUserRepositoriesUrl = json['current_user_repositories_url'];
    starredUrl = json['starred_url'];
    starredGistsUrl = json['starred_gists_url'];
    userUrl = json['user_url'];
    userOrganizationsUrl = json['user_organizations_url'];
    userRepositoriesUrl = json['user_repositories_url'];
    userSearchUrl = json['user_search_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_user_url'] = this.currentUserUrl;
    data['current_user_authorizations_html_url'] =
        this.currentUserAuthorizationsHtmlUrl;
    data['authorizations_url'] = this.authorizationsUrl;
    data['code_search_url'] = this.codeSearchUrl;
    data['commit_search_url'] = this.commitSearchUrl;
    data['emails_url'] = this.emailsUrl;
    data['emojis_url'] = this.emojisUrl;
    data['events_url'] = this.eventsUrl;
    data['feeds_url'] = this.feedsUrl;
    data['followers_url'] = this.followersUrl;
    data['following_url'] = this.followingUrl;
    data['gists_url'] = this.gistsUrl;
    data['hub_url'] = this.hubUrl;
    data['issue_search_url'] = this.issueSearchUrl;
    data['issues_url'] = this.issuesUrl;
    data['keys_url'] = this.keysUrl;
    data['label_search_url'] = this.labelSearchUrl;
    data['notifications_url'] = this.notificationsUrl;
    data['organization_url'] = this.organizationUrl;
    data['organization_repositories_url'] = this.organizationRepositoriesUrl;
    data['organization_teams_url'] = this.organizationTeamsUrl;
    data['public_gists_url'] = this.publicGistsUrl;
    data['rate_limit_url'] = this.rateLimitUrl;
    data['repository_url'] = this.repositoryUrl;
    data['repository_search_url'] = this.repositorySearchUrl;
    data['current_user_repositories_url'] = this.currentUserRepositoriesUrl;
    data['starred_url'] = this.starredUrl;
    data['starred_gists_url'] = this.starredGistsUrl;
    data['user_url'] = this.userUrl;
    data['user_organizations_url'] = this.userOrganizationsUrl;
    data['user_repositories_url'] = this.userRepositoriesUrl;
    data['user_search_url'] = this.userSearchUrl;
    return data;
  }
}