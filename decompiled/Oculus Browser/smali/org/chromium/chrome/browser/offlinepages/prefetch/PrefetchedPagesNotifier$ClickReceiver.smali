.class public Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier$ClickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "prefetch_notification_ignored_counter"

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x2

    .line 5
    invoke-static {p1}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->b(I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/16 v0, 0xc

    .line 6
    invoke-static {p2, p2, v0, p1}, Lorg/chromium/chrome/browser/download/DownloadUtils;->showDownloadManager(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;IZ)Z

    return-void
.end method
