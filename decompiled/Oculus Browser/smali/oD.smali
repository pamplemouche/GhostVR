.class public LoD;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlC;


# instance fields
.field public final synthetic a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;


# direct methods
.method public constructor <init>(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)V
    .locals 0

    .line 1
    iput-object p1, p0, LoD;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, LoC;

    .line 2
    iget-object p1, p1, LoC;->b:Ljava/lang/Object;

    check-cast p1, [B

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, LoD;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    .line 4
    iget-object p1, p1, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 5
    iget-object p1, p1, LsC;->b:LZB;

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    check-cast p1, LgC;

    const-string v1, "No persistent state found for client; not rewriting"

    invoke-virtual {p1, v1, v0}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, LoD;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    .line 8
    iget-object v2, v1, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 9
    iget-object v2, v2, LsC;->b:LZB;

    .line 10
    iget-object v1, v1, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->x:LTB;

    .line 11
    invoke-static {v2, p1, v1}, LFC;->a(LZB;[BLTB;)LXD;

    move-result-object v1

    if-nez v1, :cond_1

    .line 12
    iget-object v1, p0, LoD;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    .line 13
    iget-object v1, v1, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 14
    iget-object v1, v1, LsC;->b:LZB;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, LPE;->b([B)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v0

    .line 16
    check-cast v1, LgC;

    const-string p1, "Ignoring invalid Ticl state: %s"

    invoke-virtual {v1, p1, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 17
    invoke-virtual {v1}, LXD;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object p1, v1, LXD;->d:LPE;

    .line 19
    :cond_2
    invoke-virtual {v1}, LXD;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-wide v0, v1, LXD;->e:J

    :cond_3
    const-wide/16 v0, 0x0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 22
    new-instance v1, LXD;

    .line 23
    invoke-direct {v1, p1, v0}, LXD;-><init>(LPE;Ljava/lang/Long;)V

    .line 24
    iget-object p1, p0, LoD;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    .line 25
    iget-object p1, p1, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->x:LTB;

    .line 26
    invoke-static {v1, p1}, LFC;->b(LXD;LTB;)[B

    move-result-object p1

    .line 27
    iget-object v0, p0, LoD;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    .line 28
    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 29
    iget-object v0, v0, LsC;->d:LeC;

    .line 30
    new-instance v1, LnD;

    invoke-direct {v1, p0}, LnD;-><init>(LoD;)V

    check-cast v0, LfD;

    const-string v2, "ClientToken"

    invoke-virtual {v0, v2, p1, v1}, LfD;->a(Ljava/lang/String;[BLlC;)V

    :goto_0
    return-void
.end method
