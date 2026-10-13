.class public Lorg/chromium/chrome/browser/sharing/click_to_call/ClickToCallMessageHandler;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 9

    const-string v0, "Sharing.ClickToCallDialerPresent"

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.intent.action.DIAL"

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const/high16 v2, 0x10000000

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    :try_start_0
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    .line 7
    new-instance v2, LVU;

    invoke-direct {v2, v0}, LVU;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v1}, LVU;->a(Z)V

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .line 10
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 11
    invoke-static {v1}, LbE0;->a(Landroid/content/Context;)V

    .line 12
    new-instance v1, LVU;

    const-string v2, "Sharing.ClickToCallDialIntent"

    invoke-direct {v1, v2}, LVU;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p0}, LVU;->a(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    .line 14
    new-instance v1, LVU;

    invoke-direct {v1, v0}, LVU;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p0}, LVU;->a(Z)V

    .line 16
    sget-object p0, LzT;->a:Landroid/content/Context;

    const/16 v0, 0x11

    const/16 v2, 0xc

    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f130202

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f130201

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08012e

    const v7, 0x7f080117

    const v8, 0x7f0600dc

    const-string v1, "ClickToCall"

    .line 19
    invoke-static/range {v0 .. v8}, LXD0;->a(ILjava/lang/String;ILpm0;Ljava/lang/String;Ljava/lang/String;III)V

    :goto_1
    return-void
.end method

.method public static handleMessage(Ljava/lang/String;)V
    .locals 13

    .line 1
    new-instance v0, LaV;

    const-string v1, "Sharing.ClickToCallReceiveDeviceState"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LaV;-><init>(Ljava/lang/String;I)V

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-static {v1}, LhZ;->d(Landroid/content/Context;)Z

    move-result v1

    .line 4
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, LaV;->a(I)V

    const-string v0, "click_to_call_open_dialer_directly"

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v2, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    .line 9
    :cond_4
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 10
    invoke-static {v2}, LhZ;->d(Landroid/content/Context;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_5

    .line 11
    invoke-static {p0}, Lorg/chromium/chrome/browser/sharing/click_to_call/ClickToCallMessageHandler;->a(Ljava/lang/String;)V

    .line 12
    :cond_5
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 14
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 15
    invoke-static {v0}, LhZ;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    .line 16
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 17
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/chromium/chrome/browser/sharing/click_to_call/ClickToCallMessageHandler$TapReceiver;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ClickToCallMessageHandler.EXTRA_PHONE_NUMBER"

    .line 18
    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 19
    invoke-static {v0, v1, v2, v3}, Lpm0;->a(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object v7

    const/16 v4, 0x11

    const/16 v6, 0x9

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130203

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f080114

    const v11, 0x7f080116

    const v12, 0x7f06007a

    const-string v5, "ClickToCall"

    move-object v8, p0

    .line 21
    invoke-static/range {v4 .. v12}, LXD0;->a(ILjava/lang/String;ILpm0;Ljava/lang/String;Ljava/lang/String;III)V

    :cond_9
    return-void
.end method
