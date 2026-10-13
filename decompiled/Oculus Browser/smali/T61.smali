.class public abstract LT61;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LT61;->a:I

    return-void
.end method


# virtual methods
.method public a(Lj71;LI61;)LR61;
    .locals 3

    .line 8
    new-instance v0, Lr61;

    iget v1, p0, LT61;->a:I

    .line 9
    iget-object v2, p2, LI61;->a:Lk61;

    iget v2, v2, Lk61;->a:I

    add-int/2addr v1, v2

    .line 10
    invoke-direct {v0, p1, v1}, Lr61;-><init>(Lj71;I)V

    .line 11
    iget-object p1, p2, LI61;->a:Lk61;

    invoke-virtual {v0, p1}, Lr61;->a(Lk61;)V

    const/4 p1, 0x0

    const/16 v1, 0x8

    .line 12
    invoke-virtual {v0, p1, v1}, Lr61;->a(II)V

    .line 13
    iget p1, p2, LI61;->b:I

    const/16 v1, 0xc

    .line 14
    invoke-virtual {v0, p1, v1}, Lr61;->a(II)V

    .line 15
    iget p1, p2, LI61;->c:I

    const/16 v1, 0x10

    .line 16
    invoke-virtual {v0, p1, v1}, Lr61;->a(II)V

    .line 17
    iget p1, p2, LI61;->c:I

    invoke-static {p1}, LI61;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    iget-wide v1, p2, LI61;->d:J

    const/16 p1, 0x18

    .line 19
    invoke-virtual {v0, v1, v2, p1}, Lr61;->a(JI)V

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, LT61;->a(Lr61;)V

    .line 21
    new-instance p1, LR61;

    invoke-virtual {v0}, Lr61;->a()LH61;

    move-result-object v0

    invoke-direct {p1, v0, p2}, LR61;-><init>(LH61;LI61;)V

    return-object p1
.end method

.method public a()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    new-instance v0, Lr61;

    iget v1, p0, LT61;->a:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lr61;-><init>(Lj71;I)V

    .line 2
    invoke-virtual {p0, v0}, LT61;->a(Lr61;)V

    .line 3
    invoke-virtual {v0}, Lr61;->a()LH61;

    move-result-object v0

    .line 4
    iget-object v1, v0, LH61;->b:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, LH61;->a:Ljava/nio/ByteBuffer;

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Handles are discarded."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract a(Lr61;)V
.end method
