.class public Lny;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Loy;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public d:J


# direct methods
.method public synthetic constructor <init>(Loy;Ljava/lang/String;Lmy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lny;->d:J

    .line 3
    iput-object p1, p0, Lny;->a:Loy;

    .line 4
    iput-object p2, p0, Lny;->b:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lny;->c:J

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lny;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lny;->d:J

    .line 3
    new-instance v8, Lqy;

    iget-wide v2, p0, Lny;->c:J

    sub-long v3, v0, v2

    iget-object v5, p0, Lny;->b:Ljava/lang/String;

    iget-object v0, p0, Lny;->a:Loy;

    iget-object v0, v0, Loy;->b:Ljava/util/Stack;

    .line 4
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v7

    move-object v2, v8

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lqy;-><init>(JLjava/lang/String;[Ljava/lang/Object;I)V

    .line 5
    iget-object p1, p0, Lny;->a:Loy;

    .line 6
    iget-object p1, p1, Loy;->c:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lny;->a:Loy;

    invoke-virtual {p1, p0}, Loy;->a(Lny;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ElapsedTimeTracker has already been stopped."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
