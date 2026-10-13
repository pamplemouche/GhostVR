.class public LuE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LmE0;
.implements LoE0;


# instance fields
.field public a:I

.field public final b:LmE0;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:LH2;

.field public final f:Landroid/content/Context;

.field public final g:LCE0;

.field public final h:Landroid/os/Handler;

.field public i:Z

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;LH2;Ljava/lang/String;Ljava/lang/String;LmE0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LuE0;->a:I

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LuE0;->h:Landroid/os/Handler;

    .line 4
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 5
    iput-object p3, p0, LuE0;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, LuE0;->d:Ljava/lang/String;

    .line 7
    iput-object p2, p0, LuE0;->e:LH2;

    .line 8
    iput-object p1, p0, LuE0;->f:Landroid/content/Context;

    .line 9
    iput-object p5, p0, LuE0;->b:LmE0;

    .line 10
    new-instance p1, LCE0;

    invoke-direct {p1, p2}, LCE0;-><init>(LH2;)V

    iput-object p1, p0, LuE0;->g:LCE0;

    .line 11
    invoke-virtual {p0}, LuE0;->d()V

    .line 12
    invoke-virtual {p0}, LuE0;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, LuE0;->b(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LuE0;->i:Z

    .line 2
    invoke-virtual {p0}, LuE0;->c()V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 12
    iget-object v0, p0, LuE0;->g:LCE0;

    invoke-virtual {v0}, LCE0;->a()V

    .line 13
    iget-object v0, p0, LuE0;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, LuE0;->e:LH2;

    iget-object v1, p0, LuE0;->f:Landroid/content/Context;

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, LuE0;->d:Ljava/lang/String;

    .line 16
    invoke-static {v2}, LJ/N;->MMMBrndt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {p0, v0, v1, v2}, LpE0;->a(LoE0;LH2;Landroid/content/res/Resources;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, LuE0;->c()V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, LuE0;->k:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, LuE0;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LuE0;->k:Ljava/lang/Runnable;

    :goto_0
    const/4 v0, 0x4

    .line 5
    iput v0, p0, LuE0;->a:I

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, LuE0;->b:LmE0;

    invoke-interface {p1}, LmE0;->a()V

    .line 7
    iget-object p1, p0, LuE0;->g:LCE0;

    invoke-virtual {p1}, LCE0;->a()V

    .line 8
    iget-object p1, p0, LuE0;->e:LH2;

    const-string v0, "sync_account_switch_import_data_tag"

    invoke-virtual {p1, v0}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object p1

    check-cast p1, Ls2;

    const/4 v0, 0x1

    if-nez p1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1, v0}, Ls2;->g(Z)V

    .line 10
    :goto_1
    iget-object p1, p0, LuE0;->e:LH2;

    const-string v1, "sync_managed_data_tag"

    invoke-virtual {p1, v1}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object p1

    check-cast p1, Ls2;

    if-nez p1, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p1, v0}, Ls2;->g(Z)V

    :goto_2
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget v0, p0, LuE0;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t progress from DONE state!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iput v1, p0, LuE0;->a:I

    .line 4
    iget-object v0, p0, LuE0;->b:LmE0;

    iget-boolean v1, p0, LuE0;->i:Z

    invoke-interface {v0, v1}, LmE0;->a(Z)V

    goto/16 :goto_1

    .line 5
    :cond_2
    iput v2, p0, LuE0;->a:I

    .line 6
    iget-object v0, p0, LuE0;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, LuE0;->b()V

    goto/16 :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, LuE0;->g:LCE0;

    new-instance v1, LrE0;

    invoke-direct {v1, p0}, LrE0;-><init>(LuE0;)V

    .line 9
    invoke-virtual {v0}, LCE0;->a()V

    .line 10
    new-instance v2, LwE0;

    invoke-direct {v2}, LwE0;-><init>()V

    .line 11
    iput-object v1, v2, LwE0;->D0:LxE0;

    const-string v1, "ConfirmSyncTimeoutDialog"

    .line 12
    invoke-virtual {v0, v2, v1}, LCE0;->a(Ls2;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, LuE0;->k:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    .line 14
    new-instance v0, LsE0;

    invoke-direct {v0, p0}, LsE0;-><init>(LuE0;)V

    iput-object v0, p0, LuE0;->k:Ljava/lang/Runnable;

    .line 15
    :cond_4
    iget-object v0, p0, LuE0;->h:Landroid/os/Handler;

    iget-object v1, p0, LuE0;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 16
    :cond_5
    iput v1, p0, LuE0;->a:I

    .line 17
    iget-object v0, p0, LuE0;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, LuE0;->d:Ljava/lang/String;

    iget-object v2, p0, LuE0;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 18
    :cond_6
    iget-object v0, p0, LuE0;->c:Ljava/lang/String;

    iget-object v2, p0, LuE0;->d:Ljava/lang/String;

    iget-object v3, p0, LuE0;->e:LH2;

    .line 19
    new-instance v4, LnE0;

    invoke-direct {v4}, LnE0;-><init>()V

    .line 20
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "lastAccountName"

    .line 21
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "newAccountName"

    .line 22
    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4, v5}, Lz2;->g(Landroid/os/Bundle;)V

    .line 24
    iput-object p0, v4, LnE0;->F0:LmE0;

    .line 25
    check-cast v3, LY2;

    if-eqz v3, :cond_7

    .line 26
    new-instance v0, Lq2;

    invoke-direct {v0, v3}, Lq2;-><init>(LY2;)V

    const/4 v2, 0x0

    const-string v3, "sync_account_switch_import_data_tag"

    .line 27
    invoke-virtual {v0, v2, v4, v3, v1}, Lq2;->a(ILz2;Ljava/lang/String;I)V

    .line 28
    invoke-virtual {v0}, Ld3;->b()I

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    .line 29
    throw v0

    .line 30
    :cond_8
    :goto_0
    invoke-virtual {p0}, LuE0;->c()V

    :goto_1
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    iget-object v1, p0, LuE0;->d:Ljava/lang/String;

    new-instance v2, LqE0;

    invoke-direct {v2, p0}, LqE0;-><init>(LuE0;)V

    .line 2
    iget-object v3, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->c:Lorg/chromium/components/signin/identitymanager/IdentityManager;

    .line 3
    iget-wide v3, v3, Lorg/chromium/components/signin/identitymanager/IdentityManager;->a:J

    .line 4
    invoke-static {v3, v4, v1}, LJ/N;->MRQQkZGI(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;

    .line 5
    iget-wide v3, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->a:J

    .line 6
    invoke-static {v3, v4, v1, v2}, LJ/N;->MDiKN8ah(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
