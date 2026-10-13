.class public final LBA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltw;


# instance fields
.field public final w:Ltw;

.field public final x:LYw;

.field public final y:Lxx;


# direct methods
.method public constructor <init>(Ltw;LYw;Lxx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LBA;->w:Ltw;

    .line 3
    iput-object p2, p0, LBA;->x:LYw;

    .line 4
    iput-object p3, p0, LBA;->y:Lxx;

    return-void
.end method


# virtual methods
.method public a(Lsw;LJx;)V
    .locals 2

    .line 1
    iget-object v0, p0, LBA;->x:LYw;

    invoke-virtual {v0}, LYw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LBA;->w:Ltw;

    invoke-interface {v0, p1, p2}, Ltw;->a(Lsw;LJx;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LBA;->y:Lxx;

    new-instance v1, LAA;

    invoke-direct {v1, p0, p1, p2}, LAA;-><init>(LBA;Lsw;LJx;)V

    const-string p1, "NetworkClientWrapper send"

    invoke-virtual {v0, p1, v1}, Lxx;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, LBA;->w:Ltw;

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method
