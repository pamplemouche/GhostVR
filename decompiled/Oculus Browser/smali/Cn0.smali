.class public final synthetic LCn0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCn0;->a:Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LCn0;->a:Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;

    check-cast p1, Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;->d()V

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/offlinepages/prefetch/OfflineNotificationBackgroundTask;->e:LKR0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LKR0;->a(Z)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 6
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    .line 7
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "prefetch_notification_shown_time"

    .line 8
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->a()Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->a(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p1

    .line 12
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/16 v1, 0x4f

    .line 13
    check-cast p1, LjS0;

    invoke-virtual {p1, v0, v1}, LjS0;->a(Landroid/content/Context;I)V

    return-void
.end method
