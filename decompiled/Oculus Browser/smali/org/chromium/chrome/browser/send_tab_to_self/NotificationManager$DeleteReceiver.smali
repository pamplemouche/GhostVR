.class public final Lorg/chromium/chrome/browser/send_tab_to_self/NotificationManager$DeleteReceiver;
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

    const-string p1, "send_tab_to_self.notification.guid"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lorg/chromium/chrome/browser/send_tab_to_self/NotificationManager;->hideNotification(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, LvD0;->a:LaV;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, LaV;->a(I)V

    .line 4
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p2

    .line 5
    invoke-static {p2, p1}, LJ/N;->M6pRqHAq(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
