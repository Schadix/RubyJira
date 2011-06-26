require 'rubygems'
require 'jira4r/jira_tool'
jira = Jira4R::JiraTool.new(2, "http://www.arvatosystems-us.com/jira")
jira.login("martin.schade@bertelsmann.de", "n1lpf3rd7")
issue = Jira4R::V2::RemoteIssue.new
issue.project = "TEST"
issue.type = "1"
issue.summary = "Test from Ruby"
issue.assignee = "martin.schade@bertelsmann.de"
jira.createIssue(issue)
