$ErrorActionPreference = "Stop"
Set-Location "E:\wamp\www\awesomemotive\support\customer-success"

$prompt = @"
Working directory: E:\wamp\www\awesomemotive\support\customer-success
Run these steps now for Awesome Motive / Duplicator (duplicator.com). Complete all steps without asking questions.

## Step 1: Find this week's topic
Read the file social-media-posts/social-media-plan.md.
Find the FIRST line that starts with - [ ] (unchecked). That is this week's topic.
If no unchecked items remain, read the Slack webhook from social-media-posts/config.md and send:
  "Social Media Posts: The topic plan is empty. Please add new topics to social-media-posts/social-media-plan.md."
Then stop.

## Step 2: Read the guidelines
Read all three files before writing anything:
- social-media-posts/linkedin-guidelines.md
- social-media-posts/facebook-guidelines.md
- social-media-posts/x-guidelines.md

## Step 3: Generate the posts
Write one post per platform based on this week's topic, following each platform's guidelines exactly.

LinkedIn: Professional but personal tone. Use the best-fitting content pillar template (customer wins, team collaboration, or innovation/speed). No internal tool names, no customer names, no unreleased features.

Facebook: Warm, community tone. 40-80 words. 2-5 hashtags at end. 1-2 emojis max if natural.

X: Under 280 characters (single tweet) or a thread of 2-5 tweets. Strong hook on line one. 2-3 hashtags max.

All posts: no AI writing patterns (no testament to, pivotal, underscores, tapestry, em dash overuse, rule of three). Natural voice, varied sentence length.

For each platform, also provide:
- Image: one sentence describing the ideal image for the post
- Screenshot link: the most relevant duplicator.com page URL to screenshot (use these mappings: backup/scheduling = https://duplicator.com/features/ | migration = https://duplicator.com/features/#migrate | cloud storage = https://duplicator.com/features/#cloud-storage | recovery = https://duplicator.com/features/#recovery | general = https://duplicator.com | pricing = https://duplicator.com/pricing/)
- Stock photo search: a 3-5 word search query for Unsplash or Pexels (focus on outcomes, not tools - e.g. "small business owner relief" not "backup software")

## Step 4: Save the draft
Get today's date (YYYY-MM-DD). Create social-media-posts/drafts/ if it does not exist.
Write the file social-media-posts/drafts/YYYY-MM-DD.md with this structure:

# Social Media Drafts - [FULL DATE]

**Topic:** [topic]

---

## LinkedIn
[post]

**Image:** [one sentence describing ideal image]
**Screenshot link:** [duplicator.com URL]
**Stock photo search:** [search query]

---

## Facebook
[post]

**Image:** [one sentence describing ideal image]
**Screenshot link:** [duplicator.com URL]
**Stock photo search:** [search query]

---

## X
[post or thread]

**Image:** [one sentence describing ideal image]
**Screenshot link:** [duplicator.com URL]
**Stock photo search:** [search query]

---

_Drafts generated automatically. Review before posting._

## Step 5: Mark the topic as done
In social-media-posts/social-media-plan.md, change the used line from - [ ] to - [x].

## Step 6: Send Slack notification
Read the webhook URL from social-media-posts/config.md (line starting with SLACK_WEBHOOK=).
Send the full draft content to Slack using Bash with curl. Escape all newlines as \n and double quotes as \" in the JSON body.

Format the Slack message as:
*Weekly Social Media Drafts Ready*
*Date:* [DATE]
*Topic:* [TOPIC]

*LinkedIn:*
[post]

*Facebook:*
[post]

*X:*
[post]
"@

$prompt | & "C:\Users\Ezz\AppData\Roaming\npm\claude.cmd" --dangerously-skip-permissions -p --input-format text
