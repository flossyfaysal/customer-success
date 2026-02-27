# Duplicator Activity Log - Features Reference

> Reference document for the documentation team. Describes **what the plugin does** from a user perspective.

---

## Overview

WordPress plugin that provides a detailed audit trail of site operations. Tracks 60+ event types across 9 categories, with filtering, export, email notifications, and WP-CLI support.

---

## Tracked Events

### User Events

| Event | Severity | Description |
|-------|----------|-------------|
| Login success | Info | A user logged in successfully |
| Login failed | High | A failed login attempt was detected |
| Logout | Info | A user logged out |
| User created | Medium | A new user account was created |
| User updated | Low | A user profile was modified |
| User deleted | High | A user account was deleted |
| User role changed | High | A user's role was changed |
| Password changed | Medium | A user changed their password |
| Email changed | Medium | A user changed their email address |
| Password reset requested | Medium | A password reset was requested |

### Content Events

#### Posts

| Event | Severity | Description |
|-------|----------|-------------|
| Post created | Low | A new post was created |
| Post updated | Low | A post was modified |
| Post deleted | Medium | A post was moved to trash or permanently deleted |
| Post published | Medium | A post was published |
| Post status changed | Low | A post changed status (e.g. draft to pending) |

#### Pages

| Event | Severity | Description |
|-------|----------|-------------|
| Page created | Low | A new page was created |
| Page updated | Low | A page was modified |
| Page deleted | Medium | A page was deleted |

#### Comments

| Event | Severity | Description |
|-------|----------|-------------|
| Comment created | Low | A new comment was posted |
| Comment approved | Low | A comment was approved |
| Comment updated | Low | A comment was edited |
| Comment deleted | Low | A comment was deleted |
| Comment marked spam | Low | A comment was marked as spam |

#### Custom Fields (Post Meta)

| Event | Severity | Description |
|-------|----------|-------------|
| Custom field added | Low | A custom field was added to a post |
| Custom field updated | Low | A custom field value was changed |
| Custom field deleted | Low | A custom field was removed |

#### Featured Images

| Event | Severity | Description |
|-------|----------|-------------|
| Featured image set | Low | A featured image was assigned to a post |
| Featured image changed | Low | A featured image was replaced with a different one |
| Featured image removed | Low | A featured image was removed from a post |

### Media Events

| Event | Severity | Description |
|-------|----------|-------------|
| Media uploaded | Low | A file was uploaded to the media library |
| Media updated | Low | A media item's details were modified |
| Media deleted | Low | A media item was deleted |

### Plugin Events

| Event | Severity | Description |
|-------|----------|-------------|
| Plugin activated | Medium | A plugin was activated |
| Plugin deactivated | Medium | A plugin was deactivated |
| Plugin installed | Medium | A new plugin was installed |
| Plugin updated | Medium | A plugin was updated to a new version |
| Plugin deleted | High | A plugin was deleted from the site |

### Theme Events

| Event | Severity | Description |
|-------|----------|-------------|
| Theme activated | Medium | A theme was switched/activated |
| Theme installed | Medium | A new theme was installed |
| Theme deleted | High | A theme was deleted from the site |

### WordPress Core Events

| Event | Severity | Description |
|-------|----------|-------------|
| WordPress updated | High | WordPress core was updated |
| Settings changed | Medium | A WordPress setting was changed (see tracked settings below) |
| WordPress export | Medium | A WordPress export was performed |

### Appearance Events

#### Menus

| Event | Severity | Description |
|-------|----------|-------------|
| Menu created | Low | A navigation menu was created |
| Menu updated | Low | A navigation menu was modified |
| Menu deleted | Medium | A navigation menu was deleted |
| Menu item added | Low | An item was added to a menu |
| Menu item updated | Low | A menu item was modified |
| Menu item deleted | Low | A menu item was removed |

#### Widgets

| Event | Severity | Description |
|-------|----------|-------------|
| Widget added | Low | A widget was added to a sidebar |
| Widget updated | Low | A widget's settings were changed |
| Widget removed | Low | A widget was removed from a sidebar |

### Taxonomy Events

| Event | Severity | Description |
|-------|----------|-------------|
| Term created | Low | A taxonomy term was created (category, tag, etc.) |
| Term updated | Low | A taxonomy term was modified |
| Term deleted | Medium | A taxonomy term was deleted |
| Terms assigned to post | Low | Terms were added to a post |
| Terms removed from post | Low | Terms were removed from a post |

### WordPress Settings Tracked

The plugin monitors changes to 34+ WordPress options, organized by importance:

**Critical settings** (high severity): Site URL, Home URL, Admin Email, User Registration toggle, Default User Role, Permalink Structure.

**Important settings** (medium severity): Site Title, Tagline, Timezone, Date/Time Format, Posts Per Page, Comment Settings, Avatar Settings, Front Page/Posts Page configuration, Default Post Category/Format, Search Engine Visibility, RSS Feed Settings, Image Size Settings, Mail Server Settings.

---

## Severity Levels

| Level | Color | Used For |
|-------|-------|----------|
| Critical | Red | Reserved for future use |
| High | Orange | Login failures, deletions of users/plugins/themes, role changes, WordPress core updates |
| Medium | Yellow | Account creation, password/email changes, plugin/theme activations, publishing, settings changes |
| Low | Blue | Updates, edits, minor changes (media, menus, widgets, taxonomies) |
| Info | Gray | Successful logins, logouts |

---

## Admin Pages

### Activity Log (main page)

The primary log viewer. Displays a paginated table of all recorded events.

**Columns displayed:**
- Severity (color-coded badge)
- Date/Time (with UTC tooltip on hover)
- User (username, or "System" for automated actions)
- Event (human-readable event label)
- Object (name of the affected item: post title, username, plugin name, etc.)
- IP Address
- Source (WEB or CLI)

**Filtering:**
- Free-text search (searches message, username, and object name)
- Category filter (dropdown with all 9 categories)
- Severity filter (dropdown with all severity levels)
- User filter (filter by specific WordPress user)
- Date range (date-from and date-to)
- All filters can be combined

**Sorting:**
- By date/time (default, newest first)
- By severity
- Ascending or descending

**Export:**
- Export CSV button - downloads current filtered results as CSV
- Export JSON button - downloads current filtered results as JSON
- Exports respect all active filters and search terms

**Pagination:**
- Configurable items per page (10-100)
- Standard WordPress pagination controls

### Settings Page

Four tabs:

#### General Tab
- **Enable/Disable logging** - Master toggle for the entire logging system
- **Log retention** - How many days to keep log entries (1-365 days). Older entries are automatically purged daily
- **Events per page** - Number of entries shown per page in the log viewer (10-100)
- **Logging method** - Synchronous (events logged immediately) or Asynchronous (events batched and written every 5 minutes)

#### Events Tab
- **Category toggles** - Enable or disable logging for each of the 9 categories independently
- **Event reference table** - Expandable table showing all 60+ registered event types with their codes, categories, and severity levels

#### Notifications Tab
- **Enable/Disable notifications** - Toggle email notifications on or off
- **Recipient emails** - One or more email addresses (comma or line separated)
- **Event selection** - Checkboxes organized by category to select which events trigger email notifications

#### Tools Tab
- **Send test event** - Creates a test log entry to verify logging works
- **Send test notification** - Sends a test email to verify notification delivery
- **Purge all logs** - Permanently deletes all log entries (with confirmation)
- **Reset settings** - Restores all settings to defaults (with confirmation)
- **System information** - Displays plugin version, WordPress version, PHP version, database version

### Dashboard Widget

- Shows the 10 most recent log entries
- Links to the full Activity Log page
- Visible only to administrators (`manage_options` capability)

### Onboarding Page

- First-time introduction screen shown after plugin activation

---

## WP-CLI Commands

### Export logs

```
wp duplicator-activity-log export [options]
```

**Options:**
- `--format=<format>` - Output format: `table` (default), `csv`, `json`
- `--category_l1=<category>` - Filter by category
- `--severity=<severity>` - Filter by severity level
- `--user_id=<id>` - Filter by user ID
- `--event_type=<type>` - Filter by event type code
- `--search=<term>` - Search in messages, usernames, object names
- `--date_from=<date>` - Start date filter
- `--date_to=<date>` - End date filter
- `--site_id=<id>` - Filter by site ID (multisite)
- `--fields=<fields>` - Customize displayed columns (table format)

### Purge logs

```
wp duplicator-activity-log purge [options]
```

**Options:**
- `--older-than=<days>` - Only delete entries older than N days (omit to delete all)
- `--yes` - Skip confirmation prompt

---

## Email Notifications

- HTML-formatted email alerts for configured events
- Subject line format: `[Site Name] Activity Alert: Event Label`
- Multiple recipients supported
- Per-event-type configuration (choose exactly which events trigger emails)
- Test notification feature to verify delivery

---

## Data Captured Per Event

Each log entry records:

- **Timestamp** (local time + UTC)
- **User** who performed the action (username, ID, role) or "System" for automated actions
- **IP address** and **user agent**
- **Request info** (HTTP method, URI)
- **Source** (WEB or CLI)
- **Event type** and **severity**
- **Category** (hierarchical: level 1, 2, 3)
- **Human-readable message**
- **Object** affected (type, ID, name)
- **Changes detail** (old value vs new value for each changed field)
- **Site ID** (for multisite environments)

---

## Sensitive Data Handling

- Passwords, secret keys, and database credentials are **redacted** in logs (shown as masked values)
- Long values (100+ characters) are **truncated**
- Complex values (arrays, objects) are **summarized** (e.g., "[Array with 5 items]")
- Post content changes are logged as **"[content changed]"** without storing the actual content

---

## Smart Behaviors

- **Deduplication** - Avoids duplicate log entries when WordPress fires multiple hooks for the same action (e.g., a status change won't also log a generic "post updated")
- **Auto-draft/revision filtering** - Ignores internal WordPress actions like autosaves, revisions, and auto-drafts
- **Automatic cleanup** - Daily scheduled task removes log entries older than the configured retention period
- **Multisite awareness** - Logs include site ID for multisite installations

---

## Permissions

All plugin pages and features require the `manage_options` capability (WordPress administrators only).
