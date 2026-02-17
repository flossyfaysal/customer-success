# Skill: Review Seeker

## Purpose
Generate a personalized Trustpilot review request email after a support ticket is resolved and the customer leaves a positive rating. The goal is to convert a great support experience into a public review — without being pushy.

## When to Use
- Customer issue has been fully resolved
- Customer left a positive rating or positive feedback on the ticket
- You've checked EDD and confirmed customer loyalty (signup date)
- You've checked previous tickets and confirmed no review was requested before

## Required Inputs (User Must Provide)
1. **Customer first name** — used in greeting
2. **Rating/feedback quote** — the exact words the customer left (e.g., "Great and fast work...")
3. **Issue summary** — brief description of what was resolved (e.g., "license activation issue")
4. **Last email sent** — the closing support email so you can reference the resolution naturally
5. **EDD signup date** — the date the customer first became a customer (e.g., 2016-07-14)
6. **Previous tickets info** — whether there were past tickets and if a review was ever requested

## How to Calculate Loyalty Duration
- Take the EDD signup date and calculate the difference from today's date
- Express it in a way that feels impactful:
  - 1-2 years: "over a year" or "for a couple of years"
  - 3-5 years: "for X years"
  - 6-9 years: "for nearly a decade"
  - 10+ years: "for over a decade"
- Use the human-friendly duration, not the raw date — "nearly 10 years" hits harder than "since 2016"

## Output Structure (Follow This Order Strictly)

### 1. Thank for the rating
- Open with genuine thanks
- Quote or reference their actual words — this feels personal, not templated
- Briefly tie it back to the issue that was resolved

### 2. Appreciate their loyalty
- Mention how long they've been a customer (use calculated duration, not raw date)
- Make it feel like a genuine, personal observation — not a data lookup
- Keep it warm and sincere, 1-2 sentences max

### 3. Ask for a Trustpilot review
- Transition naturally from the loyalty appreciation
- Frame the ask around their unique value as a long-time user
- Give them a reason: "a few honest words from someone like you helps others feel confident"
- Include the Trustpilot link on its own line for easy clicking:
  https://www.trustpilot.com/evaluate/duplicator.com
- Use the line: the biggest compliment you can give us is telling others about your experience (adapt naturally to context)

### 4. Close with no pressure
- Make it clear there's zero obligation
- End on a positive, friendly note tied back to the resolution
- Leave the door open for future support

## Tone & Style Rules
- **Conversational and warm** — write like a real human, not a support bot
- **Simple language** — short sentences, no corporate jargon
- **No emojis** unless the customer used them first
- **Not pushy** — the ask should feel like a natural extension of the conversation, not the point of the email
- **Genuine** — every compliment should feel earned, not manufactured
- **Concise** — the entire email should be scannable in under 30 seconds

## Template (Base Reference)

Hi [First Name],

Thanks so much for the rating! Your feedback is important to us, and we truly value you as a customer. :)

Would you be willing to take a minute to share a review of your experience using Duplicator? If so, here's where you can leave your review: https://www.trustpilot.com/evaluate/duplicator.com

The biggest compliment you can give is telling others about us, and I genuinely appreciate you doing so.

And if you have any questions, please let me know.

Thanks!

> **Important:** Do NOT copy this template verbatim. Use it as a structural reference only. Every output must be personalized based on the customer's actual rating words, the specific issue resolved, and their loyalty duration. The template exists to ensure the Trustpilot link and core ask are always included — the rest should feel freshly written for that specific customer.

## Example

### Inputs
- **Name:** Douglas
- **Rating:** "Great and fast work..."
- **Issue:** License activation issue (server-side fix pushed by team)
- **EDD date:** 2016-07-14 (nearly 10 years)
- **Previous tickets:** Yes, resolved but never asked for review

### Output

Hi Douglas,

Thanks so much for the kind words — "great and fast work" really made my day! I'm glad we got that activation sorted out smoothly for you.

I also couldn't help but notice you've been with us for nearly 10 years! Honestly, that kind of loyalty means the world to our team. Thank you for sticking with Duplicator through it all.

If you have a spare minute, it would mean a lot if you could share a quick review of your experience on Trustpilot:
https://www.trustpilot.com/evaluate/duplicator.com

A few honest words from a long-time user like you go a long way in helping others feel confident choosing Duplicator — and it's the biggest compliment you could give us.

Totally no pressure, of course. I'm just glad everything's working again! And if anything else comes up down the road, I'm always here.

Best regards,

## What Makes a Great Output
- Opens with the customer's own words — feels personal
- Loyalty is expressed as a felt duration ("nearly 10 years"), not a database date
- The Trustpilot ask is framed around why *their* voice matters specifically
- The "no pressure" close is casual and genuine
- The whole email reads like it was written by a person who actually cares — because it was
