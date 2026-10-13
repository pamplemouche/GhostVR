.class public Lorg/chromium/chrome/browser/signin/SigninManager;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEU0;
.implements LeV0;


# static fields
.field public static m:I = 0x11


# instance fields
.field public a:J

.field public final b:Lorg/chromium/components/signin/AccountTrackerService;

.field public final c:Lorg/chromium/components/signin/identitymanager/IdentityManager;

.field public final d:Lorg/chromium/components/signin/identitymanager/IdentityMutator;

.field public final e:LnV0;

.field public final f:LWT;

.field public final g:LWT;

.field public h:Ljava/util/List;

.field public i:Z

.field public j:Z

.field public k:LwF0;

.field public l:LzF0;


# direct methods
.method public constructor <init>(JLorg/chromium/components/signin/AccountTrackerService;Lorg/chromium/components/signin/identitymanager/IdentityManager;Lorg/chromium/components/signin/identitymanager/IdentityMutator;LnV0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->f:LWT;

    .line 3
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->g:LWT;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->h:Ljava/util/List;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->j:Z

    .line 6
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 7
    iput-wide p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->a:J

    .line 8
    iput-object p3, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->b:Lorg/chromium/components/signin/AccountTrackerService;

    .line 9
    iput-object p4, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->c:Lorg/chromium/components/signin/identitymanager/IdentityManager;

    .line 10
    iput-object p5, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->d:Lorg/chromium/components/signin/identitymanager/IdentityMutator;

    .line 11
    iput-object p6, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->e:LnV0;

    .line 12
    iget-wide p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->a:J

    .line 13
    invoke-static {p1, p2}, LJ/N;->ML2H3J_j(J)Z

    move-result p1

    .line 14
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->i:Z

    .line 15
    iget-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->b:Lorg/chromium/components/signin/AccountTrackerService;

    invoke-virtual {p1, p0}, Lorg/chromium/components/signin/AccountTrackerService;->a(LEU0;)V

    .line 16
    iget-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->c:Lorg/chromium/components/signin/identitymanager/IdentityManager;

    .line 17
    iget-object p1, p1, Lorg/chromium/components/signin/identitymanager/IdentityManager;->b:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static create(JLorg/chromium/components/signin/AccountTrackerService;Lorg/chromium/components/signin/identitymanager/IdentityManager;Lorg/chromium/components/signin/identitymanager/IdentityMutator;)Lorg/chromium/chrome/browser/signin/SigninManager;
    .locals 8

    .line 1
    new-instance v7, Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 2
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v6

    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/signin/SigninManager;-><init>(JLorg/chromium/components/signin/AccountTrackerService;Lorg/chromium/components/signin/identitymanager/IdentityManager;Lorg/chromium/components/signin/identitymanager/IdentityMutator;LnV0;)V

    return-object v7
.end method

.method private onSigninAllowedByPolicyChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->i:Z

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->i()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    .line 25
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->h()V

    .line 26
    iget-object v0, v0, LwF0;->b:LvF0;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0}, LvF0;->b()V

    .line 28
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->a:J

    .line 29
    invoke-static {v0, v1}, LJ/N;->Ma7$PdIR(J)V

    .line 30
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->i()V

    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->a(ILyF0;Z)V

    return-void
.end method

.method public a(ILyF0;Z)V
    .locals 3

    .line 18
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->d()Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v1, LzF0;

    const/4 v2, 0x0

    if-nez p3, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    invoke-direct {v1, p2, p3}, LzF0;-><init>(LyF0;Z)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->l:LzF0;

    .line 20
    iget-object p2, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->d:Lorg/chromium/components/signin/identitymanager/IdentityMutator;

    const/4 p3, 0x2

    .line 21
    iget-wide v0, p2, Lorg/chromium/components/signin/identitymanager/IdentityMutator;->a:J

    .line 22
    invoke-static {v0, v1, v2, p1, p3}, LJ/N;->Mw3X2cb0(JIII)Z

    return-void
.end method

.method public a(Landroid/accounts/Account;LvF0;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SigninManager"

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Ignoring sign-in request due to null account."

    .line 1
    invoke-static {v1, v0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, LvF0;->b()V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    if-eqz v2, :cond_3

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Ignoring sign-in request as another sign-in request is pending."

    .line 4
    invoke-static {v1, v0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p2}, LvF0;->b()V

    :cond_2
    return-void

    .line 6
    :cond_3
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->j:Z

    if-eqz v2, :cond_5

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Ignoring sign-in request until the First Run check completes."

    .line 7
    invoke-static {v1, v0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    .line 8
    invoke-interface {p2}, LvF0;->b()V

    :cond_4
    return-void

    .line 9
    :cond_5
    new-instance v2, LwF0;

    invoke-direct {v2, p1, p2}, LwF0;-><init>(Landroid/accounts/Account;LvF0;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    .line 10
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->i()V

    .line 11
    iget-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->b:Lorg/chromium/components/signin/AccountTrackerService;

    invoke-virtual {p1}, Lorg/chromium/components/signin/AccountTrackerService;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->j()V

    goto :goto_0

    .line 13
    :cond_6
    invoke-static {}, LmU0;->b()LmU0;

    move-result-object p1

    invoke-virtual {p1}, LmU0;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    iget-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    const/4 p2, 0x1

    iput-boolean p2, p1, LwF0;->c:Z

    goto :goto_0

    :cond_7
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Cancelling the sign-in process as Google Play services is unavailable"

    .line 15
    invoke-static {v1, p2, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->a()V

    :goto_0
    return-void
.end method

.method public a(Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, LwF0;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, LwF0;->c:Z

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->j()V

    :cond_0
    return-void
.end method

.method public b(Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;)V
    .locals 5

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->l:LzF0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 5
    new-instance p1, LzF0;

    invoke-direct {p1, v1, v0}, LzF0;-><init>(LyF0;Z)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->l:LzF0;

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->l:LzF0;

    iget-boolean p1, p1, LzF0;->b:Z

    .line 7
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "google.services.username"

    .line 10
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    iget-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->l:LzF0;

    iget-object p1, p1, LzF0;->a:LyF0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, LyF0;->b()V

    .line 13
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->l:LzF0;

    iget-boolean p1, p1, LzF0;->b:Z

    new-instance v2, LtF0;

    invoke-direct {v2, p0}, LtF0;-><init>(Lorg/chromium/chrome/browser/signin/SigninManager;)V

    .line 14
    iget-object v3, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->e:LnV0;

    .line 15
    invoke-virtual {v3, v1, v1}, LnV0;->a(Landroid/accounts/Account;Lorg/chromium/base/Callback;)V

    if-eqz p1, :cond_2

    .line 16
    iget-wide v3, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->a:J

    .line 17
    invoke-static {v3, v4, v2}, LJ/N;->MPgeVXVd(JLjava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_2
    iget-wide v3, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->a:J

    .line 19
    invoke-static {v3, v4, v2}, LJ/N;->M8qgqQLs(JLjava/lang/Object;)V

    .line 20
    :goto_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->b:Lorg/chromium/components/signin/AccountTrackerService;

    invoke-virtual {p1, v0}, Lorg/chromium/components/signin/AccountTrackerService;->a(Z)V

    return-void

    .line 21
    :cond_3
    throw v1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->a()V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->a:J

    .line 2
    invoke-static {v0, v1}, LJ/N;->M4Lnd8Lh(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->c:Lorg/chromium/components/signin/identitymanager/IdentityManager;

    .line 2
    iget-object v0, v0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->b:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->b:Lorg/chromium/components/signin/AccountTrackerService;

    invoke-virtual {v0, p0}, Lorg/chromium/components/signin/AccountTrackerService;->b(LEU0;)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->a:J

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->l:LzF0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->b()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 4

    .line 1
    invoke-static {}, LdT;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lja0;->a:Lja0;

    .line 3
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v0, v3}, Lja0;->a(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/16 v3, 0x9

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, LJ/N;->MHkLlsGi()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final h()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 3
    sget-object v2, LZ01;->a:LFW;

    const-wide/16 v3, 0x0

    .line 4
    invoke-static {v2, v1, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LqF0;

    invoke-direct {v1, p0}, LqF0;-><init>(Lorg/chromium/chrome/browser/signin/SigninManager;)V

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SigninManager"

    const-string v2, "Ignoring sign in progress request as no pending sign in."

    .line 2
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->c:Lorg/chromium/components/signin/identitymanager/IdentityManager;

    iget-object v2, v0, LwF0;->a:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 4
    iget-wide v3, v1, Lorg/chromium/components/signin/identitymanager/IdentityManager;->a:J

    .line 5
    invoke-static {v3, v4, v2}, LJ/N;->MRQQkZGI(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;

    .line 6
    iput-object v1, v0, LwF0;->d:Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->k:LwF0;

    iget-object v0, v0, LwF0;->d:Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;

    new-instance v1, LsF0;

    invoke-direct {v1, p0}, LsF0;-><init>(Lorg/chromium/chrome/browser/signin/SigninManager;)V

    .line 8
    iget-wide v2, p0, Lorg/chromium/chrome/browser/signin/SigninManager;->a:J

    .line 9
    invoke-static {v2, v3, v0, v1}, LJ/N;->MIxJzPV2(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
