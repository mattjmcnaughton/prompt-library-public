# read-gh-issue

Retrieve and display a GitHub issue using the `gh` CLI.

## Purpose

Use this command to fetch the details of a GitHub issue. The issue can be specified by number or URL, with the context provided by the user.

## Usage

Retrieve an issue using `gh issue view`:

```bash
# By issue number (in current repo)
gh issue view 123

# By URL
gh issue view https://github.com/owner/repo/issues/123

# View with comments
gh issue view 123 --comments

# Open in web browser
gh issue view 123 --web

# Output as JSON with specific fields
gh issue view 123 --json title,body,state,labels,assignees,number,createdAt

# From a different repository
gh issue view 123 --repo owner/repo
```

## Output

The command displays:
- Issue title and number
- Current state (open/closed)
- Author and creation date
- Labels and assignees
- Full issue body including description, context, and tasks
- Optionally comments with `--comments` flag

## Available JSON Fields

When using `--json`, you can request these fields:
assignees, author, body, closed, closedAt, closedByPullRequestsReferences, comments, createdAt, id, isPinned, labels, milestone, number, projectCards, projectItems, reactionGroups, state, stateReason, title, updatedAt, url

## Notes

The user should provide the issue identifier through context (issue number, URL, or other reference). The command will use whatever identifier is most appropriate for the situation.

When displaying or working with issue content, never use emojis or non-ASCII characters in any outputs or summaries.
