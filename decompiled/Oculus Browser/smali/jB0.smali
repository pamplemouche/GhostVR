.class public final synthetic LjB0;
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

    iput-object p1, p0, LjB0;->w:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, LjB0;->w:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    .line 1
    invoke-virtual {p1}, Lz2;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lz2;->E()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p1, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->E0:I

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v0}, LJ/N;->MAoV8w8M(II)V

    .line 4
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    new-instance v2, LlB0;

    invoke-direct {v2, p1}, LlB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;)V

    invoke-virtual {v0, v2}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Lorg/chromium/base/Callback;)V

    .line 5
    iget v0, p1, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->E0:I

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lz2;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method
