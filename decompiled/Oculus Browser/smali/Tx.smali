.class public LTx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LQx;


# instance fields
.field public final a:LQx;

.field public final b:LSx;


# direct methods
.method public constructor <init>(LQx;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LSx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LSx;-><init>(LRx;)V

    iput-object v0, p0, LTx;->b:LSx;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, LTx;->a:LQx;

    return-void

    .line 4
    :cond_0
    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LTx;->a:LQx;

    invoke-interface {v0, p1}, LQx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object p1, p0, LTx;->b:LSx;

    .line 3
    iget-object p1, p1, LSx;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, LTx;->b:LSx;

    .line 5
    iget-object p1, p1, LSx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :goto_0
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 7

    .line 6
    iget-object v0, p0, LTx;->b:LSx;

    .line 7
    iget-object v0, v0, LSx;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 8
    iget-object v1, p0, LTx;->b:LSx;

    .line 9
    iget-object v1, v1, LSx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/2addr v1, v0

    if-nez v1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    int-to-double v2, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 10
    :goto_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Cache Hit Ratio: %d/%d (%.2f)"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, LTx;->a:LQx;

    invoke-interface {v0}, LQx;->clear()V

    .line 2
    iget-object v0, p0, LTx;->b:LSx;

    .line 3
    iget-object v1, v0, LSx;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    iget-object v0, v0, LSx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, LTx;->a:LQx;

    invoke-interface {v0}, LQx;->size()I

    move-result v0

    return v0
.end method
