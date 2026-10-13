.class public final Lorg/chromium/chrome/browser/sharing/shared_clipboard/SharedClipboardMessageHandler$TryAgainReceiver;
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
    .locals 10

    .line 1
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 2
    new-instance v0, Lbm0;

    invoke-direct {v0, p1}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object p1, v0, Lbm0;->b:Landroid/app/NotificationManager;

    const/16 v0, 0xb

    const-string v1, "SharedClipboard"

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const-string p1, "android.intent.extra.TEXT"

    .line 4
    invoke-static {p2, p1}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "SharedClipboard.EXTRA_DEVICE_CLIENT_NAME"

    .line 5
    invoke-static {p2, v2}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SharedClipboard.EXTRA_DEVICE_GUID"

    .line 6
    invoke-static {p2, v3}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x12

    .line 9
    sget-object v4, LzT;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f13057e

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    .line 11
    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 12
    new-instance v8, Lcm0;

    invoke-direct {v8, v3, v1, v0}, Lcm0;-><init>(ILjava/lang/String;I)V

    const-string v0, "sharing"

    .line 13
    invoke-static {v7, v0, v6, v8}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object v0

    .line 14
    invoke-interface {v0, v5}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object v0

    .line 15
    invoke-interface {v0, v1}, LPl0;->c(Ljava/lang/String;)LPl0;

    move-result-object v0

    .line 16
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f06007a

    .line 17
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 18
    invoke-interface {v0, v1}, LPl0;->d(I)LPl0;

    move-result-object v0

    .line 19
    invoke-interface {v0, v7}, LPl0;->b(I)LPl0;

    move-result-object v0

    const v1, 0x7f080114

    .line 20
    invoke-interface {v0, v1}, LPl0;->c(I)LPl0;

    move-result-object v0

    .line 21
    invoke-interface {v0, v9, v9, v7}, LPl0;->a(IIZ)LPl0;

    move-result-object v0

    .line 22
    invoke-interface {v0, v7}, LPl0;->d(Z)LPl0;

    move-result-object v0

    const/4 v1, -0x1

    .line 23
    invoke-interface {v0, v1}, LPl0;->e(I)LPl0;

    move-result-object v0

    .line 24
    invoke-interface {v0}, LPl0;->b()LOl0;

    move-result-object v0

    .line 25
    new-instance v1, Lbm0;

    invoke-direct {v1, v4}, Lbm0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lbm0;->a(LOl0;)V

    .line 26
    sget-object v1, Lnm0;->a:Lom0;

    .line 27
    iget-object v0, v0, LOl0;->a:Landroid/app/Notification;

    .line 28
    invoke-virtual {v1, v3, v0}, Lom0;->a(ILandroid/app/Notification;)V

    .line 29
    sget-object v0, Lorg/chromium/chrome/browser/sharing/SharingServiceProxy;->a:Lorg/chromium/chrome/browser/sharing/SharingServiceProxy;

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    sget-wide v0, Lorg/chromium/chrome/browser/sharing/SharingServiceProxy;->b:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    .line 31
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 32
    invoke-static {v0}, LJ/N;->MI$va2Pq(Ljava/lang/Object;)V

    .line 33
    :cond_2
    new-instance v0, Lorg/chromium/chrome/browser/sharing/SharingServiceProxy;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/sharing/SharingServiceProxy;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/sharing/SharingServiceProxy;->a:Lorg/chromium/chrome/browser/sharing/SharingServiceProxy;

    .line 34
    :goto_0
    new-instance v0, LcE0;

    invoke-direct {v0, v2, p1, p2}, LcE0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-wide v1, Lorg/chromium/chrome/browser/sharing/SharingServiceProxy;->b:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    const/4 p1, 0x5

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_3
    invoke-static {v1, v2, p2, p1, v0}, LJ/N;->ML9GlI7W(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method
