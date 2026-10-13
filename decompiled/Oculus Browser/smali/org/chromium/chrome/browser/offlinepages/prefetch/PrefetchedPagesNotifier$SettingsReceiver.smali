.class public Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier$SettingsReceiver;
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

    const/4 p2, 0x3

    .line 1
    invoke-static {p2}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->b(I)V

    .line 2
    const-class p2, Lorg/chromium/chrome/browser/preferences/NotificationsPreferences;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    const v0, 0x8000

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
