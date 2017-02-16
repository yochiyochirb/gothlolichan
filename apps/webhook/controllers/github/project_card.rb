module Webhook::Controllers::Github
  class ProjectCard
    WEBHOOK_PAYLOAD_EXAMPLE = \
      '{
        "action": "created",
        "project_card": {
          "url": "https://api.github.com/projects/columns/cards/1266091",
          "column_url": "https://api.github.com/projects/columns/515520",
          "column_id": 515520,
          "id": 1266091,
          "note": "heyheyhey",
          "creator": {
            "login": "baxterthehacker",
            "id": 6752317,
            "avatar_url": "https://avatars.githubusercontent.com/u/6752317?v=2",
            "gravatar_id": "",
            "url": "https://api.github.com/users/baxterthehacker",
            "html_url": "https://github.com/baxterthehacker",
            "followers_url": "https://api.github.com/users/baxterthehacker/followers",
            "following_url": "https://api.github.com/users/baxterthehacker/following{/other_user}",
            "gists_url": "https://api.github.com/users/baxterthehacker/gists{/gist_id}",
            "starred_url": "https://api.github.com/users/baxterthehacker/starred{/owner}{/repo}",
            "subscriptions_url": "https://api.github.com/users/baxterthehacker/subscriptions",
            "organizations_url": "https://api.github.com/users/baxterthehacker/orgs",
            "repos_url": "https://api.github.com/users/baxterthehacker/repos",
            "events_url": "https://api.github.com/users/baxterthehacker/events{/privacy}",
            "received_events_url": "https://api.github.com/users/baxterthehacker/received_events",
            "type": "User",
            "site_admin": false
          },
          "created_at": 1483569391,
          "updated_at": 1483569391,
          "content_url":  "https://api.github.com/repos/baxterthehacker/public-repo/issues/2"
        },
        "repository": {
          "id": 35129377,
          "name": "public-repo",
          "full_name": "baxterthehacker/public-repo",
          "owner": {
            "login": "baxterthehacker",
            "id": 6752317,
            "avatar_url": "https://avatars.githubusercontent.com/u/6752317?v=3",
            "gravatar_id": "",
            "url": "https://api.github.com/users/baxterthehacker",
            "html_url": "https://github.com/baxterthehacker",
            "followers_url": "https://api.github.com/users/baxterthehacker/followers",
            "following_url": "https://api.github.com/users/baxterthehacker/following{/other_user}",
            "gists_url": "https://api.github.com/users/baxterthehacker/gists{/gist_id}",
            "starred_url": "https://api.github.com/users/baxterthehacker/starred{/owner}{/repo}",
            "subscriptions_url": "https://api.github.com/users/baxterthehacker/subscriptions",
            "organizations_url": "https://api.github.com/users/baxterthehacker/orgs",
            "repos_url": "https://api.github.com/users/baxterthehacker/repos",
            "events_url": "https://api.github.com/users/baxterthehacker/events{/privacy}",
            "received_events_url": "https://api.github.com/users/baxterthehacker/received_events",
            "type": "User",
            "site_admin": false
          },
          "private": false,
          "html_url": "https://github.com/baxterthehacker/public-repo",
          "description": "",
          "fork": false,
          "url": "https://api.github.com/repos/baxterthehacker/public-repo",
          "forks_url": "https://api.github.com/repos/baxterthehacker/public-repo/forks",
          "keys_url": "https://api.github.com/repos/baxterthehacker/public-repo/keys{/key_id}",
          "collaborators_url": "https://api.github.com/repos/baxterthehacker/public-repo/collaborators{/collaborator}",
          "teams_url": "https://api.github.com/repos/baxterthehacker/public-repo/teams",
          "hooks_url": "https://api.github.com/repos/baxterthehacker/public-repo/hooks",
          "issue_events_url": "https://api.github.com/repos/baxterthehacker/public-repo/issues/events{/number}",
          "events_url": "https://api.github.com/repos/baxterthehacker/public-repo/events",
          "assignees_url": "https://api.github.com/repos/baxterthehacker/public-repo/assignees{/user}",
          "branches_url": "https://api.github.com/repos/baxterthehacker/public-repo/branches{/branch}",
          "tags_url": "https://api.github.com/repos/baxterthehacker/public-repo/tags",
          "blobs_url": "https://api.github.com/repos/baxterthehacker/public-repo/git/blobs{/sha}",
          "git_tags_url": "https://api.github.com/repos/baxterthehacker/public-repo/git/tags{/sha}",
          "git_refs_url": "https://api.github.com/repos/baxterthehacker/public-repo/git/refs{/sha}",
          "trees_url": "https://api.github.com/repos/baxterthehacker/public-repo/git/trees{/sha}",
          "statuses_url": "https://api.github.com/repos/baxterthehacker/public-repo/statuses/{sha}",
          "languages_url": "https://api.github.com/repos/baxterthehacker/public-repo/languages",
          "stargazers_url": "https://api.github.com/repos/baxterthehacker/public-repo/stargazers",
          "contributors_url": "https://api.github.com/repos/baxterthehacker/public-repo/contributors",
          "subscribers_url": "https://api.github.com/repos/baxterthehacker/public-repo/subscribers",
          "subscription_url": "https://api.github.com/repos/baxterthehacker/public-repo/subscription",
          "commits_url": "https://api.github.com/repos/baxterthehacker/public-repo/commits{/sha}",
          "git_commits_url": "https://api.github.com/repos/baxterthehacker/public-repo/git/commits{/sha}",
          "comments_url": "https://api.github.com/repos/baxterthehacker/public-repo/comments{/number}",
          "issue_comment_url": "https://api.github.com/repos/baxterthehacker/public-repo/issues/comments{/number}",
          "contents_url": "https://api.github.com/repos/baxterthehacker/public-repo/contents/{+path}",
          "compare_url": "https://api.github.com/repos/baxterthehacker/public-repo/compare/{base}...{head}",
          "merges_url": "https://api.github.com/repos/baxterthehacker/public-repo/merges",
          "archive_url": "https://api.github.com/repos/baxterthehacker/public-repo/{archive_format}{/ref}",
          "downloads_url": "https://api.github.com/repos/baxterthehacker/public-repo/downloads",
          "issues_url": "https://api.github.com/repos/baxterthehacker/public-repo/issues{/number}",
          "pulls_url": "https://api.github.com/repos/baxterthehacker/public-repo/pulls{/number}",
          "milestones_url": "https://api.github.com/repos/baxterthehacker/public-repo/milestones{/number}",
          "notifications_url": "https://api.github.com/repos/baxterthehacker/public-repo/notifications{?since,all,participating}",
          "labels_url": "https://api.github.com/repos/baxterthehacker/public-repo/labels{/name}",
          "releases_url": "https://api.github.com/repos/baxterthehacker/public-repo/releases{/id}",
          "created_at": "2015-05-05T23:40:12Z",
          "updated_at": "2015-05-05T23:40:12Z",
          "pushed_at": "2015-05-05T23:40:27Z",
          "git_url": "git://github.com/baxterthehacker/public-repo.git",
          "ssh_url": "git@github.com:baxterthehacker/public-repo.git",
          "clone_url": "https://github.com/baxterthehacker/public-repo.git",
          "svn_url": "https://github.com/baxterthehacker/public-repo",
          "homepage": null,
          "size": 0,
          "stargazers_count": 0,
          "watchers_count": 0,
          "language": null,
          "has_issues": true,
          "has_downloads": true,
          "has_wiki": true,
          "has_pages": true,
          "forks_count": 0,
          "mirror_url": null,
          "open_issues_count": 2,
          "forks": 0,
          "open_issues": 2,
          "watchers": 0,
          "default_branch": "master"
        },
        "organization": {
          "login": "baxterandthehackers",
          "id": 7649605,
          "url": "https://api.github.com/orgs/baxterandthehackers",
          "repos_url": "https://api.github.com/orgs/baxterandthehackers/repos",
          "events_url": "https://api.github.com/orgs/baxterandthehackers/events",
          "members_url": "https://api.github.com/orgs/baxterandthehackers/members{/member}",
          "public_members_url": "https://api.github.com/orgs/baxterandthehackers/public_members{/member}",
          "avatar_url": "https://avatars.githubusercontent.com/u/7649605?v=2"
        },
        "sender": {
          "login": "baxterthehacker",
          "id": 6752317,
          "avatar_url": "https://avatars.githubusercontent.com/u/6752317?v=2",
          "gravatar_id": "",
          "url": "https://api.github.com/users/baxterthehacker",
          "html_url": "https://github.com/baxterthehacker",
          "followers_url": "https://api.github.com/users/baxterthehacker/followers",
          "following_url": "https://api.github.com/users/baxterthehacker/following{/other_user}",
          "gists_url": "https://api.github.com/users/baxterthehacker/gists{/gist_id}",
          "starred_url": "https://api.github.com/users/baxterthehacker/starred{/owner}{/repo}",
          "subscriptions_url": "https://api.github.com/users/baxterthehacker/subscriptions",
          "organizations_url": "https://api.github.com/users/baxterthehacker/orgs",
          "repos_url": "https://api.github.com/users/baxterthehacker/repos",
          "events_url": "https://api.github.com/users/baxterthehacker/events{/privacy}",
          "received_events_url": "https://api.github.com/users/baxterthehacker/received_events",
          "type": "User",
          "site_admin": false
        }
      }'

    include Webhook::Action

    def call(params)
      params.tapp
      params[:payload].tapp
      # payload = JSON.parse(WEBHOOK_PAYLOAD_EXAMPLE)
      payload = JSON.parse(params[:payload])
      payload.tapp

      # case payload['action']
      # when 'created'
      #   'New project card is created'
      # when 'edited'
      #   'New project card is created'
      #
      # end

      # payload.tapp
      # ENV.tapp
      slack_client = SlackRubyBot::Client.new(token: ENV['SLACK_API_TOKEN'], send_gifs: nil, aliases: nil)
      # slack_client.tapp
      # slack_client.say(channel: 'D45N5TCUA', text: 'project_card')
      client = Slack::Web::Client.new
      client.chat_postMessage(channel: ENV['SLACK_DEFAULT_CHANNEL'], text: "プロジェクトにノートが追加されました [#{payload['project_card']['note']}]", as_user: true)
    end
  end
end
