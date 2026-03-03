# Cross-Sell Decision Tree

Use this to determine which product to cross-sell based on the customer's questions:

```
1. Customer asks about cloud storage (OneDrive, Google Drive, Dropbox, S3, etc.)
   |-- Do they mention cross-server restore or migration?
      |-- Yes -> Cross-sell Duplicator Cloud Storage
      |-- No -> Answer their questions, mention Cloud Storage as a "reliable alternative" at the end

2. Customer mentions large site, slow backups, or storage concerns
   |-- Cross-sell WP Media Cleanup (smaller backups, faster processing)

3. Customer mentions migration, moving hosts, or server transfer
   |-- Are they technical or non-technical?
      |-- Technical -> Answer their questions, mention WMGS as a "hands-off option"
      |-- Non-technical -> Lead with WMGS as the recommended approach

4. Customer asks about features on a higher tier than what they're considering
   |-- Upsell to the appropriate tier with feature comparison

5. Customer is comparing Duplicator Pro vs Lite
   |-- Highlight Pro-exclusive features relevant to their use case
   |-- Mention COMPLETE60OFF discount code

6. Customer is considering or on the Basic plan
   |-- Do they need multiple cloud destinations?
      |-- Yes -> Upsell to Plus (unlimited remote storage integrations)
      |-- No -> Do they need multisite?
         |-- Yes -> Upsell to Pro or Elite (multisite support)
         |-- No -> Do they have media-heavy sites?
            |-- Yes -> Upsell to Elite (WP Media Cleanup included free)
            |-- No -> Basic may be fine, but mention Plus benefits as a "Pro Tip"

7. No clear cross-sell opportunity
   |-- Don't force it. Just answer their questions well.
```
