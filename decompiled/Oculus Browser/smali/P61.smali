.class public LP61;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LL61;


# instance fields
.field public final A:Ljava/util/concurrent/Executor;

.field public final w:Lj61;

.field public x:LK61;

.field public y:J

.field public z:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LP61;

    return-void
.end method

.method public constructor <init>(Lx71;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lq71;->c()Lj71;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lq71;->c()Lj71;

    move-result-object v0

    invoke-interface {v0}, Lj71;->a()LH71;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x1

    .line 4
    iput-wide v2, p0, LP61;->y:J

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, LP61;->z:Ljava/util/Map;

    .line 6
    new-instance v2, Lj61;

    invoke-direct {v2, p1, v0}, Lj61;-><init>(Lx71;LH71;)V

    iput-object v2, p0, LP61;->w:Lj61;

    .line 7
    new-instance v0, LN61;

    invoke-direct {v0, p0, v1}, LN61;-><init>(LP61;LM61;)V

    .line 8
    iput-object v0, v2, Lj61;->z:LJ61;

    .line 9
    invoke-interface {p1}, Lq71;->c()Lj71;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    sget-object v0, Lw61;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lv61;

    invoke-direct {v0, p1}, Lv61;-><init>(Lj71;)V

    .line 12
    sget-object p1, Lw61;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 13
    :cond_1
    iput-object v0, p0, LP61;->A:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 14
    :cond_2
    iput-object v1, p0, LP61;->A:Ljava/util/concurrent/Executor;

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, LP61;->w:Lj61;

    .line 2
    iget-object v1, v0, Lj61;->y:LH71;

    iget-object v2, v0, Lj61;->x:Lx71;

    sget-object v3, Li71;->c:Li71;

    iget-object v0, v0, Lj61;->w:Li61;

    invoke-interface {v1, v2, v3, v0}, LH71;->a(Lq71;Li71;LG71;)I

    return-void
.end method

.method public a(LK61;)V
    .locals 0

    .line 3
    iput-object p1, p0, LP61;->x:LK61;

    return-void
.end method

.method public a(Lg61;)V
    .locals 1

    .line 17
    iget-object v0, p0, LP61;->w:Lj61;

    .line 18
    iput-object p1, v0, Lj61;->A:Lg61;

    return-void
.end method

.method public a(LH61;)Z
    .locals 1

    .line 4
    iget-object v0, p0, LP61;->w:Lj61;

    invoke-virtual {v0, p1}, Lj61;->a(LH61;)Z

    move-result p1

    return p1
.end method

.method public a(LH61;LJ61;)Z
    .locals 9

    .line 5
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    .line 6
    iget-wide v0, p0, LP61;->y:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, LP61;->y:J

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-nez v8, :cond_0

    add-long/2addr v2, v4

    .line 7
    iput-wide v2, p0, LP61;->y:J

    move-wide v0, v4

    .line 8
    :cond_0
    iget-object v2, p0, LP61;->z:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    iget-object v2, p1, LR61;->d:LI61;

    .line 10
    iget-object v3, p1, LH61;->a:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_2

    const/16 v4, 0x18

    .line 11
    invoke-virtual {v3, v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 12
    iput-wide v0, v2, LI61;->d:J

    .line 13
    iget-object v2, p0, LP61;->w:Lj61;

    invoke-virtual {v2, p1}, Lj61;->a(LH61;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_1
    iget-object p1, p0, LP61;->z:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 15
    throw p1

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to find a new request identifier."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, LP61;->w:Lj61;

    invoke-virtual {v0}, Lj61;->close()V

    return-void
.end method

.method public y()Lq71;
    .locals 1

    .line 1
    iget-object v0, p0, LP61;->w:Lj61;

    invoke-virtual {v0}, Lj61;->y()Lx71;

    move-result-object v0

    return-object v0
.end method
