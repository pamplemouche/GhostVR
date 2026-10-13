.class public final synthetic LiB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

.field public final x:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LiB0;->w:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    iput-object p2, p0, LiB0;->x:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, LiB0;->w:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    iget-object v0, p0, LiB0;->x:Landroid/accounts/Account;

    .line 1
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 3
    invoke-static {p1}, Lorg/chromium/chrome/browser/signin/SigninUtils;->a(Landroid/content/Context;)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "account"

    .line 5
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7
    :cond_1
    invoke-static {p1, v1}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    :goto_0
    return p1
.end method
