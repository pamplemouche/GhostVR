.class public LNe0;
.super LIe0;
.source "PG"


# instance fields
.field public a:LIe0;

.field public b:LyO0;

.field public c:I


# direct methods
.method public constructor <init>(LIe0;LCT;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, LIe0;-><init>()V

    .line 2
    new-instance v0, LyO0;

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 5
    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-float v1, v4

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 6
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 7
    invoke-direct {v0, p2, p3}, LyO0;-><init>(LCT;I)V

    .line 8
    iput-object v0, p0, LNe0;->b:LyO0;

    .line 9
    iput-object p1, p0, LNe0;->a:LIe0;

    .line 10
    invoke-virtual {p1}, LIe0;->c()I

    .line 11
    iget-object p1, p0, LNe0;->a:LIe0;

    invoke-virtual {p1}, LIe0;->c()I

    move-result p1

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 12
    iput p2, p0, LNe0;->c:I

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, LNe0;->a:LIe0;

    invoke-virtual {p1}, LIe0;->c()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, 0x3

    .line 14
    iput p1, p0, LNe0;->c:I

    goto :goto_0

    .line 15
    :cond_1
    iput p2, p0, LNe0;->c:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LNe0;->b:LyO0;

    .line 2
    invoke-virtual {v0}, LyO0;->a()LxO0;

    move-result-object v0

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, LR6;->a(I)V

    .line 4
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sget-object v1, LvO0;->a:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILorg/chromium/base/Callback;)V
    .locals 9

    .line 5
    iget-object v0, p0, LNe0;->b:LyO0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, LNe0;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, LNe0;->b:LyO0;

    invoke-virtual {v2, v0}, LyO0;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 8
    iget-object v2, p0, LNe0;->a:LIe0;

    if-nez v2, :cond_1

    .line 9
    invoke-interface {p5, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_1
    new-instance v0, LMe0;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, LMe0;-><init>(LNe0;Ljava/lang/String;IILorg/chromium/base/Callback;)V

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, LIe0;->a(Ljava/lang/String;Ljava/lang/String;IILorg/chromium/base/Callback;)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    .line 11
    invoke-static {}, LKe0;->a()LKe0;

    move-result-object p3

    .line 12
    iget-wide v1, p3, LKe0;->a:J

    .line 13
    invoke-static {v1, v2, p3, p2, p1}, LJ/N;->M1k4kLxJ(JLjava/lang/Object;Ljava/lang/String;I)V

    .line 14
    invoke-interface {p5, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, LNe0;->a:LIe0;

    invoke-virtual {v0}, LIe0;->b()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LNe0;->a:LIe0;

    .line 3
    iget-object v1, p0, LNe0;->b:LyO0;

    .line 4
    iget-object v2, v1, LyO0;->c:LCT;

    iget-object v3, v1, LyO0;->b:LBT;

    .line 5
    iget-object v4, v2, LCT;->a:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, v3, LBT;->a:Ljava/lang/Object;

    .line 7
    iget-object v2, v2, LCT;->a:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    :goto_0
    iput-object v0, v1, LyO0;->b:LBT;

    .line 9
    iput-object v0, p0, LNe0;->b:LyO0;

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, LNe0;->c:I

    return v0
.end method
