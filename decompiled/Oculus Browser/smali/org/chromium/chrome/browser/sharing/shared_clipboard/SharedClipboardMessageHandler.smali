.class public Lorg/chromium/chrome/browser/sharing/shared_clipboard/SharedClipboardMessageHandler;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static showNotification(Ljava/lang/String;)V
    .locals 13

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/chromium/chrome/browser/sharing/shared_clipboard/SharedClipboardMessageHandler$TapReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lpm0;->a(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object v7

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p0, 0x7f130579

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v1, 0x7f130578

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v8, p0

    const/16 v4, 0x12

    const/16 v6, 0xa

    const p0, 0x7f130577

    .line 7
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f080114

    const v11, 0x7f0802c2

    const v12, 0x7f06007a

    const-string v5, "SharedClipboard"

    .line 8
    invoke-static/range {v4 .. v12}, LXD0;->a(ILjava/lang/String;ILpm0;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method
