require 'jira4r/jira_tool'
#jira = Jira4R::JiraTool.new(2, "http://www.arvatosystems-us.com/jira")
jira = Jira4R::JiraTool.new(2, "http://jira.hybris.de")
jira.login("martin.schade@bertelsmann.de", "F1ghtClub77+")
#jira.login("martin.schade@bertelsmann.de", "n1lpf3rd7")
issue = Jira4R::V2::RemoteIssue.new
#jira.getIssueById("TEST-1").inspect
jira.getIssueById("BTOB-120").inspect
