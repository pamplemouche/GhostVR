.class public final synthetic LrB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LrB0;->w:Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;

    iput-object p2, p0, LrB0;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LrB0;->w:Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://myaccount.google.com/activitycontrols/search"

    .line 4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.browser.application_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "create_new_tab"

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "Signin_AccountSettings_GoogleActivityControlsClicked"

    .line 9
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    throw v1

    .line 11
    :cond_1
    throw v1
.end method
