.class public final synthetic LcE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LcE0;->a:Ljava/lang/String;

    iput-object p2, p0, LcE0;->b:Ljava/lang/String;

    iput-object p3, p0, LcE0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, LcE0;->a:Ljava/lang/String;

    iget-object v2, v0, LcE0;->b:Ljava/lang/String;

    iget-object v3, v0, LcE0;->c:Ljava/lang/String;

    move-object/from16 v4, p1

    check-cast v4, Ljava/lang/Integer;

    .line 1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "SharedClipboard"

    const/16 v7, 0xb

    if-nez v5, :cond_0

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    new-instance v2, Lbm0;

    invoke-direct {v2, v1}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, v2, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6, v7}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6
    sget-object v8, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1301c7

    .line 8
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v5, v14, :cond_3

    if-eq v5, v13, :cond_3

    if-eq v5, v11, :cond_2

    if-eq v5, v12, :cond_3

    const v7, 0x7f1301cd

    if-eq v5, v10, :cond_1

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v9, v5, v15

    .line 9
    invoke-virtual {v8, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    new-array v5, v14, [Ljava/lang/Object;

    aput-object v9, v5, v15

    .line 10
    invoke-virtual {v8, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    const v5, 0x7f1301cf

    .line 11
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const v5, 0x7f1301cc

    new-array v7, v14, [Ljava/lang/Object;

    aput-object v9, v7, v15

    .line 12
    invoke-virtual {v8, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 13
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 14
    sget-object v8, LzT;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eq v7, v14, :cond_8

    if-eq v7, v13, :cond_7

    if-eq v7, v11, :cond_6

    if-eq v7, v12, :cond_5

    const v9, 0x7f1301ca

    if-eq v7, v10, :cond_4

    .line 16
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    const v7, 0x7f1301c8

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v1, v9, v15

    .line 18
    invoke-virtual {v8, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_6
    const v7, 0x7f1301ce

    .line 19
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_7
    const v7, 0x7f1301cb

    .line 20
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_8
    const v7, 0x7f1301c9

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v1, v9, v15

    .line 21
    invoke-virtual {v8, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 22
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    if-eq v8, v12, :cond_a

    .line 23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v13, :cond_9

    goto :goto_2

    :cond_9
    move-object v1, v9

    goto :goto_3

    .line 24
    :cond_a
    :goto_2
    sget-object v4, LzT;->a:Landroid/content/Context;

    .line 25
    new-instance v8, Landroid/content/Intent;

    const-class v10, Lorg/chromium/chrome/browser/sharing/shared_clipboard/SharedClipboardMessageHandler$TryAgainReceiver;

    invoke-direct {v8, v4, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "android.intent.extra.TEXT"

    .line 26
    invoke-virtual {v8, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v8, "SharedClipboard.EXTRA_DEVICE_GUID"

    .line 27
    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SharedClipboard.EXTRA_DEVICE_CLIENT_NAME"

    .line 28
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    .line 29
    invoke-static {v4, v15, v1, v2}, Lpm0;->a(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object v1

    :goto_3
    const/16 v2, 0x12

    .line 30
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 32
    new-instance v8, Lcm0;

    const/16 v10, 0xb

    invoke-direct {v8, v2, v6, v10}, Lcm0;-><init>(ILjava/lang/String;I)V

    const-string v10, "sharing"

    .line 33
    invoke-static {v14, v10, v9, v8}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object v8

    .line 34
    invoke-interface {v8, v5}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object v5

    .line 35
    invoke-interface {v5, v6}, LPl0;->c(Ljava/lang/String;)LPl0;

    move-result-object v5

    const v6, 0x7f0600dc

    .line 36
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 37
    invoke-interface {v5, v6}, LPl0;->d(I)LPl0;

    move-result-object v5

    .line 38
    invoke-interface {v5, v14}, LPl0;->b(I)LPl0;

    move-result-object v5

    const v6, 0x7f08012e

    .line 39
    invoke-interface {v5, v6}, LPl0;->c(I)LPl0;

    move-result-object v5

    .line 40
    invoke-interface {v5, v7}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object v5

    const/4 v6, -0x1

    .line 41
    invoke-interface {v5, v6}, LPl0;->e(I)LPl0;

    move-result-object v5

    .line 42
    invoke-interface {v5, v14}, LPl0;->f(Z)LPl0;

    move-result-object v5

    if-eqz v1, :cond_b

    .line 43
    invoke-interface {v5, v1}, LPl0;->b(Lpm0;)LPl0;

    move-result-object v6

    const v8, 0x7f080106

    const v9, 0x7f130623

    .line 44
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0xb

    invoke-interface {v6, v8, v4, v1, v9}, LPl0;->a(ILjava/lang/CharSequence;Lpm0;I)LPl0;

    .line 45
    :cond_b
    invoke-interface {v5, v7}, LPl0;->d(Ljava/lang/String;)LOl0;

    move-result-object v1

    .line 46
    new-instance v4, Lbm0;

    invoke-direct {v4, v3}, Lbm0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lbm0;->a(LOl0;)V

    .line 47
    sget-object v3, Lnm0;->a:Lom0;

    .line 48
    iget-object v1, v1, LOl0;->a:Landroid/app/Notification;

    .line 49
    invoke-virtual {v3, v2, v1}, Lom0;->a(ILandroid/app/Notification;)V

    :goto_4
    return-void
.end method
