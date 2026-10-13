.class public final synthetic LsF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/signin/SigninManager;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/signin/SigninManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LsF0;->w:Lorg/chromium/chrome/browser/signin/SigninManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, LsF0;->w:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 1
    iget-object v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->d:Lorg/chromium/components/signin/identitymanager/IdentityMutator;

    iget-object v2, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    iget-object v2, v2, LwF0;->d:Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;

    invoke-virtual {v2}, Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;->getId()Lorg/chromium/components/signin/identitymanager/CoreAccountId;

    move-result-object v2

    .line 2
    iget-wide v3, v1, Lorg/chromium/components/signin/identitymanager/IdentityMutator;->a:J

    .line 3
    invoke-static {v3, v4, v2}, LJ/N;->MASdubqY(JLjava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "SigninManager"

    const-string v3, "Failed to set the PrimaryAccount in IdentityManager, aborting signin"

    .line 4
    invoke-static {v2, v3, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->a()V

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v1

    iget-object v3, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    iget-object v3, v3, LwF0;->d:Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;

    .line 7
    invoke-virtual {v3}, Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 8
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    .line 9
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "google.services.username"

    .line 10
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    iget-object v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    iget-object v1, v1, LwF0;->d:Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;

    .line 13
    iget-object v1, v1, Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;->b:Landroid/accounts/Account;

    .line 14
    iget-object v3, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->e:LnV0;

    .line 15
    invoke-virtual {v3, v1, v4}, LnV0;->a(Landroid/accounts/Account;Lorg/chromium/base/Callback;)V

    .line 16
    iget-object v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->e:LnV0;

    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v3}, LnV0;->a(Z)V

    .line 18
    iget-object v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    iget-object v1, v1, LwF0;->b:LvF0;

    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v1}, LvF0;->a()V

    .line 20
    :cond_1
    iget-object v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->d:Lorg/chromium/components/signin/identitymanager/IdentityMutator;

    iget-object v3, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    iget-object v3, v3, LwF0;->d:Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;

    .line 21
    invoke-virtual {v3}, Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;->getId()Lorg/chromium/components/signin/identitymanager/CoreAccountId;

    move-result-object v3

    .line 22
    iget-wide v5, v1, Lorg/chromium/components/signin/identitymanager/IdentityMutator;->a:J

    .line 23
    invoke-static {v5, v6, v3}, LJ/N;->McMy7mwQ(JLjava/lang/Object;)V

    const-string v1, "Signin_Signin_Succeed"

    .line 24
    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    .line 25
    sget v1, Lorg/chromium/chrome/browser/signin/SigninManager;->m:I

    const/16 v3, 0x1c

    const-string v5, "Signin.SigninCompletedAccessPoint"

    invoke-static {v5, v1, v3}, LfV;->a(Ljava/lang/String;II)V

    const/16 v1, 0x11

    .line 26
    sput v1, Lorg/chromium/chrome/browser/signin/SigninManager;->m:I

    const/4 v1, 0x7

    const-string v3, "Signin.SigninReason"

    .line 27
    invoke-static {v3, v2, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 28
    iput-object v4, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    .line 29
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->h()V

    .line 30
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->i()V

    .line 31
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->f:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LxF0;

    .line 32
    invoke-interface {v1}, LxF0;->b()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 33
    :cond_3
    throw v4
.end method
