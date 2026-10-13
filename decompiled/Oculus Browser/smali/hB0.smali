.class public final synthetic LhB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LhB0;->w:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    iget-object p1, p0, LhB0;->w:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    .line 1
    invoke-virtual {p1}, Lz2;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lz2;->E()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->G0:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    const-string v3, "auto_signed_in_school_account"

    .line 4
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 5
    iget v3, p1, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->E0:I

    .line 6
    invoke-static {v0, v3}, LJ/N;->MAoV8w8M(II)V

    .line 7
    new-instance v0, LOE0;

    invoke-direct {v0}, LOE0;-><init>()V

    .line 8
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget v4, p1, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->E0:I

    const-string v5, "ShowGAIAServiceType"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v0, v3}, Lz2;->g(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {v0, p1, v1}, Lz2;->a(Lz2;I)V

    .line 12
    iget-object p1, p1, Lz2;->N:LY2;

    const-string v1, "sign_out_dialog_tag"

    .line 13
    invoke-virtual {v0, p1, v1}, Ls2;->a(LH2;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method
