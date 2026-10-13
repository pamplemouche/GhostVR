.class public abstract LzD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;
.implements LAD0;


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, LzD0;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, LzD0;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    move-object v0, p0

    check-cast v0, LIc0;

    .line 3
    iget-object v1, v0, LzD0;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 4
    iget-object v2, v0, LzD0;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5
    invoke-static {v2}, LJU0;->a(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    xor-int/lit8 v2, v1, 0x1

    .line 6
    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->g(Z)V

    if-eqz v1, :cond_b

    .line 7
    iget-object v0, v0, LIc0;->c:Ljava/lang/Runnable;

    .line 8
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v1

    .line 9
    iput-boolean v3, v1, Lorg/chromium/chrome/browser/signin/SigninManager;->j:Z

    .line 10
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->i()V

    .line 12
    :cond_3
    sget-object v2, LGc0;->a:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    .line 13
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v2

    .line 14
    iget-object v2, v2, Lorg/chromium/components/signin/AccountManagerFacade;->a:LnU0;

    check-cast v2, LdV0;

    .line 15
    iget-object v2, v2, LdV0;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 16
    array-length v5, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v2, v6

    .line 17
    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v8, "com.google"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 18
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, LGc0;->a:Ljava/lang/Boolean;

    .line 19
    :cond_6
    sget-object v2, LGc0;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 20
    sget-object v2, LzT;->a:Landroid/content/Context;

    const-string v5, "user"

    .line 21
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 22
    invoke-virtual {v2}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "no_modify_accounts"

    .line 23
    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v4

    if-nez v2, :cond_8

    .line 24
    :cond_7
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lorg/chromium/components/signin/AccountManagerFacade;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_9

    :cond_8
    const/4 v3, 0x1

    :cond_9
    if-eqz v3, :cond_b

    .line 26
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->f()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_4

    .line 27
    :cond_a
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v2

    new-instance v3, LHc0;

    invoke-direct {v3, v1, v0}, LHc0;-><init>(Lorg/chromium/chrome/browser/signin/SigninManager;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lorg/chromium/components/signin/AccountManagerFacade;->b(Lorg/chromium/base/Callback;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    iput-object p1, p0, LzD0;->b:Ljava/lang/Integer;

    .line 3
    invoke-virtual {p0}, LzD0;->a()V

    return-void
.end method
