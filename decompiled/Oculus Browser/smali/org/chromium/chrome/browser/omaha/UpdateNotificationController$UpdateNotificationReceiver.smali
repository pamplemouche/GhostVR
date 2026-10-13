.class public final Lorg/chromium/chrome/browser/omaha/UpdateNotificationController$UpdateNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/omaha/UpdateNotificationController$UpdateNotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "org.chromium.chrome.browser.omaha.update_notification_state_extra"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 3
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    const-class p2, Lw70;

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "org.chromium.chrome.browser.omaha.inline_update_notification_received_extra"

    .line 5
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    .line 6
    invoke-static {p0, v0}, LqZ;->b(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p2, Ldo0;

    invoke-direct {p2, p0, p1}, Ldo0;-><init>(Lorg/chromium/chrome/browser/omaha/UpdateNotificationController$UpdateNotificationReceiver;Landroid/content/Context;)V

    .line 8
    sget-object p0, Ljo0;->a:Lmo0;

    .line 9
    invoke-virtual {p0, p2}, Lmo0;->a(Lorg/chromium/base/Callback;)Z

    :goto_0
    return-void

    .line 10
    :cond_2
    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance v0, Lco0;

    invoke-direct {v0, p0, p1, p2}, Lco0;-><init>(Lorg/chromium/chrome/browser/omaha/UpdateNotificationController$UpdateNotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    invoke-static {}, LUg0;->e()LUg0;

    move-result-object p1

    invoke-virtual {p1, v0}, LUg0;->a(LCg0;)V

    .line 3
    invoke-static {}, LUg0;->e()LUg0;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, LUg0;->a(ZLCg0;)V

    return-void
.end method
