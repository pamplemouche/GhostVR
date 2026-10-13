.class public LsG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LoG0;
.implements LmV0;


# static fields
.field public static y:LsG0;

.field public static z:Z


# instance fields
.field public final w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

.field public final x:LtG0;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LKU0;->d()LKU0;

    .line 3
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    invoke-virtual {v0, p0}, LnV0;->a(LmV0;)V

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iput-object v0, p0, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 5
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a(LoG0;)V

    const-string v0, "SYNC"

    .line 6
    invoke-static {v0}, LCe0;->a(Ljava/lang/String;)LBe0;

    move-result-object v0

    .line 7
    check-cast v0, LDe0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LDe0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SyncController"

    const-string v2, "Unable to get unique tag for sync. This may lead to unexpected tab sync behavior."

    .line 9
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    const-string v3, "session_sync"

    invoke-static {v3, v0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 12
    iget-wide v3, v2, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 13
    invoke-static {v3, v4, v2, v0}, LJ/N;->MgBi3zGI(JLjava/lang/Object;Ljava/lang/String;)V

    .line 14
    :goto_0
    new-instance v0, LtG0;

    invoke-direct {v0}, LtG0;-><init>()V

    iput-object v0, p0, LsG0;->x:LtG0;

    .line 15
    iget-object v1, p0, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a(LoG0;)V

    .line 16
    invoke-virtual {p0}, LsG0;->b()V

    .line 17
    new-instance v0, LqG0;

    invoke-direct {v0, p0}, LqG0;-><init>(LsG0;)V

    .line 18
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->g:LWT;

    invoke-virtual {v1, v0}, LWT;->a(Ljava/lang/Object;)Z

    .line 19
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    new-instance v1, LrG0;

    invoke-direct {v1, p0}, LrG0;-><init>(LsG0;)V

    .line 20
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->f:LWT;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    return-void

    .line 21
    :cond_1
    throw v1
.end method

.method public static c()LsG0;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-boolean v0, LsG0;->z:Z

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, LsG0;

    invoke-direct {v0}, LsG0;-><init>()V

    sput-object v0, LsG0;->y:LsG0;

    :cond_0
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, LsG0;->z:Z

    .line 6
    :cond_1
    sget-object v0, LsG0;->y:LsG0;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LpG0;

    invoke-direct {v1, p0}, LpG0;-><init>(LsG0;)V

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 2
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v1

    .line 3
    iget-boolean v1, v1, LnV0;->g:Z

    .line 4
    iget-wide v2, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 5
    invoke-static {v2, v3, v0, v1}, LJ/N;->Md$qCoTO(JLjava/lang/Object;Z)V

    .line 6
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    invoke-virtual {v0}, LnV0;->a()Z

    move-result v0

    .line 7
    iget-object v1, p0, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->j()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 9
    iget-wide v1, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 10
    invoke-static {v1, v2, v0}, LJ/N;->M2FbdG0l(JLjava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, LnV0;->a(Z)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    .line 15
    iget-boolean v0, v0, LnV0;->g:Z

    const/4 v1, 0x6

    const-string v2, "Sync.StopSource"

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 16
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    .line 17
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 18
    :goto_0
    iget-object v0, p0, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 19
    iget-wide v1, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 20
    invoke-static {v1, v2, v0}, LJ/N;->Myc5Nx1y(JLjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    invoke-virtual {v0}, LnV0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, LnV0;->a(Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    invoke-virtual {v0}, LnV0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, LnV0;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method
