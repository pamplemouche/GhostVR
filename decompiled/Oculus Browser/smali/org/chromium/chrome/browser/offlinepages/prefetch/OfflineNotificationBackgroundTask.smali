.class public Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;
.super LH10;
.source "PG"


# instance fields
.field public e:LKR0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LH10;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 10

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0xdbba0

    goto :goto_0

    :cond_2
    const-wide/32 v1, 0x36ee80

    .line 2
    :goto_0
    sget-object p0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v3, "prefetch_notification_shown_time"

    const-wide/16 v4, 0x0

    .line 3
    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long p0, v6, v4

    if-gtz p0, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long p0, v6, v8

    if-lez p0, :cond_4

    .line 6
    sget-object p0, LyT;->a:Landroid/content/SharedPreferences;

    .line 7
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 8
    invoke-interface {p0, v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-wide v6, v8

    .line 10
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 11
    invoke-virtual {p0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x5

    .line 12
    invoke-virtual {p0, v3, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v3, 0xb

    const/4 v6, 0x7

    .line 13
    invoke-virtual {p0, v3, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    const/4 v6, 0x0

    .line 14
    invoke-virtual {p0, v3, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 15
    invoke-virtual {p0, v3, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 16
    invoke-virtual {p0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 17
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long p0, v6, v8

    if-gtz p0, :cond_5

    goto :goto_1

    :cond_5
    sub-long/2addr v6, v8

    move-wide v4, v6

    :goto_1
    cmp-long p0, v1, v4

    if-gez p0, :cond_6

    move-wide v1, v4

    :cond_6
    const/16 p0, 0x4f

    const-wide/16 v3, 0x2

    mul-long v3, v3, v1

    .line 18
    invoke-static {p0, v1, v2, v3, v4}, LOS0;->a(IJJ)LHS0;

    move-result-object p0

    .line 19
    iput-boolean v0, p0, LHS0;->e:Z

    .line 20
    iput-boolean v0, p0, LHS0;->f:Z

    .line 21
    invoke-virtual {p0}, LHS0;->a()LOS0;

    move-result-object p0

    .line 22
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    .line 23
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 24
    check-cast v0, LjS0;

    invoke-virtual {v0, v1, p0}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    return-void
.end method

.method public static e()Z
    .locals 6

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefetch_notification_has_new_pages"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3
    sget-object v3, LyT;->a:Landroid/content/SharedPreferences;

    const-string v4, "prefetch_notification_ignored_counter"

    .line 4
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-ge v4, v5, :cond_1

    .line 6
    sget-object v4, LyT;->a:Landroid/content/SharedPreferences;

    const-string v5, "prefetch_notification_enabled"

    .line 7
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    return v1
.end method

.method public static onFreshOfflineContentAvailable()V
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefetch_notification_has_new_pages"

    const/4 v2, 0x1

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, LEn0;->a(I)V

    .line 6
    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;->d()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 27
    invoke-static {p1}, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;->a(I)V

    return-void
.end method

.method public b(Landroid/content/Context;LRS0;LKR0;)I
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;->e()Z

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;->d()V

    return p3

    .line 3
    :cond_0
    invoke-static {p1}, LhZ;->c(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x6

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    .line 4
    invoke-static {v0}, LEn0;->a(I)V

    .line 5
    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;->a(I)V

    return p3

    .line 6
    :cond_1
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    const-string p2, "prefetch_notification_offline_counter"

    .line 7
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 8
    invoke-static {p1}, LEn0;->a(I)V

    const/4 v1, 0x4

    if-ge p1, v1, :cond_2

    .line 9
    invoke-static {p2}, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;->a(I)V

    return p3

    :cond_2
    return v0
.end method

.method public b(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/content/Context;LRS0;LKR0;)V
    .locals 6

    .line 1
    iput-object p3, p0, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;->e:LKR0;

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v2

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->a()Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->a(I)V

    .line 4
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    const-string p2, "prefetch_notification_shown_time"

    const-wide/16 v0, 0x0

    .line 5
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 6
    new-instance v5, LCn0;

    invoke-direct {v5, p0}, LCn0;-><init>(Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;)V

    .line 7
    iget-wide v0, v2, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a:J

    .line 8
    invoke-static/range {v0 .. v5}, LJ/N;->MFVw2bHR(JLjava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, LEn0;->a(I)V

    .line 2
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    const-string v2, "prefetch_notification_has_new_pages"

    .line 3
    invoke-static {v1, v2, v0}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method
