.class public final synthetic LkB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqy0;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LkB0;->a:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, LkB0;->a:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    .line 1
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const-string v0, "no_modify_accounts"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public b(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lpy0;->a(Lqy0;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
