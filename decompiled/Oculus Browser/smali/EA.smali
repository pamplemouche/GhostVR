.class public final LEA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lww;


# instance fields
.field public final a:Lww;

.field public final b:LYw;

.field public final c:Lxx;


# direct methods
.method public constructor <init>(Lww;LYw;Lxx;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SchedulerApiWrapper"

    const-string v2, "Create SchedulerApiMainThreadWrapper"

    .line 2
    invoke-static {v1, v2, v0}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LEA;->a:Lww;

    .line 4
    iput-object p2, p0, LEA;->b:LYw;

    .line 5
    iput-object p3, p0, LEA;->c:Lxx;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 4
    iget-object v0, p0, LEA;->b:LYw;

    invoke-virtual {v0}, LYw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, LEA;->a:Lww;

    invoke-interface {v0, p1}, Lww;->a(I)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, LEA;->c:Lxx;

    new-instance v1, LDA;

    invoke-direct {v1, p0, p1}, LDA;-><init>(LEA;I)V

    const-string p1, "SchedulerApiWrapper onRequestError"

    invoke-virtual {v0, p1, v1}, Lxx;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, LEA;->b:LYw;

    invoke-virtual {v0}, LYw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LEA;->a:Lww;

    invoke-interface {v0, p1, p2}, Lww;->a(J)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LEA;->c:Lxx;

    new-instance v1, LCA;

    invoke-direct {v1, p0, p1, p2}, LCA;-><init>(LEA;J)V

    const-string p1, "SchedulerApiWrapper onReceiveNewContent"

    invoke-virtual {v0, p1, v1}, Lxx;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
