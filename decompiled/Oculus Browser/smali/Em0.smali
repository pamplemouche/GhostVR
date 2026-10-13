.class public LEm0;
.super LXg0;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/notifications/scheduler/DisplayAgent$Receiver;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p2, p0, LEm0;->w:Landroid/content/Intent;

    invoke-direct {p0}, LXg0;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 10

    .line 1
    iget-object v0, p0, LEm0;->w:Landroid/content/Intent;

    const-string v1, "org.chromium.chrome.browser.notifications.scheduler.EXTRA_INTENT_TYPE"

    const/4 v2, -0x1

    .line 2
    invoke-static {v0, v1, v2}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "org.chromium.chrome.browser.notifications.scheduler.EXTRA_GUID"

    .line 3
    invoke-static {v0, v2}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "org.chromium.chrome.browser.notifications.scheduler.EXTRA_SCHEDULER_CLIENT_TYPE "

    .line 4
    invoke-static {v0, v4, v3}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    const-string v9, "NotificationSchedulerDisplayAgent"

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    .line 6
    invoke-static/range {v3 .. v8}, LJ/N;->MJnQd5Zg(Ljava/lang/Object;IILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "org.chromium.chrome.browser.notifications.scheduler.EXTRA_ACTION_BUTTON_TYPE"

    .line 7
    invoke-static {v0, v1, v3}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v7

    const-string v1, "org.chromium.chrome.browser.notifications.scheduler.EXTRA_ACTION_BUTTON_ID"

    .line 8
    invoke-static {v0, v1}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v5, 0x1

    move-object v6, v2

    .line 10
    invoke-static/range {v3 .. v8}, LJ/N;->MJnQd5Zg(Ljava/lang/Object;IILjava/lang/String;ILjava/lang/String;)V

    .line 11
    new-instance v0, Lbm0;

    .line 12
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 13
    invoke-direct {v0, v1}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 15
    iget-object v0, v0, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v9, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    .line 17
    invoke-static/range {v3 .. v8}, LJ/N;->MJnQd5Zg(Ljava/lang/Object;IILjava/lang/String;ILjava/lang/String;)V

    .line 18
    new-instance v0, Lbm0;

    .line 19
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 20
    invoke-direct {v0, v1}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 22
    iget-object v0, v0, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v9, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
