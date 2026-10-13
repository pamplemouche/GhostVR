.class public Lorg/chromium/chrome/browser/offlinepages/AutoFetchNotifier$InProgressCancelReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic a()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 2
    invoke-static {v0}, LJ/N;->MytEgqET(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "notification_action"

    const/4 v1, 0x5

    .line 1
    invoke-static {p2, v0, v1}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "offline_auto_fetch_user_cancel_action_in_progress"

    .line 4
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    invoke-static {p1}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object p1

    sget-object p2, LZm0;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, LUg0;->a(Ljava/lang/Runnable;)V

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/AutoFetchNotifier;->a()V

    return-void
.end method
