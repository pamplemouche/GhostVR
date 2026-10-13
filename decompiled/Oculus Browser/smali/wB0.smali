.class public final synthetic LwB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LwB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LwB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    .line 1
    iget v1, v0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->Z0:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 2
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SYNC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    .line 3
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v1

    .line 4
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v2

    invoke-virtual {v2}, LKU0;->b()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v0

    .line 5
    invoke-virtual {v1, v2, v0, v4}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Landroid/accounts/Account;Landroid/app/Activity;Lorg/chromium/base/Callback;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "market://details?id="

    .line 7
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v0, v1}, Lz2;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/16 v5, 0x80

    if-ne v1, v5, :cond_4

    .line 12
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->b()Landroid/accounts/Account;

    move-result-object v0

    .line 13
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v1

    new-instance v2, LBB0;

    invoke-direct {v2, v0}, LBB0;-><init>(Landroid/accounts/Account;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->a(ILyF0;Z)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 14
    iget-object v1, v0, Lz2;->N:LY2;

    if-eqz v1, :cond_5

    .line 15
    new-instance v3, Lq2;

    invoke-direct {v3, v1}, Lq2;-><init>(LY2;)V

    .line 16
    new-instance v1, LKG0;

    invoke-direct {v1}, LKG0;-><init>()V

    .line 17
    invoke-virtual {v1, v0, v2}, Lz2;->a(Lz2;I)V

    const-string v0, "enter_password"

    .line 18
    invoke-virtual {v1, v3, v0}, Ls2;->a(Ld3;Ljava/lang/String;)I

    goto :goto_0

    .line 19
    :cond_5
    throw v4

    :cond_6
    :goto_0
    return-void
.end method
