.class public LSP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlX;


# instance fields
.field public A:J

.field public B:Lk71;

.field public C:Lorg/chromium/base/Callback;

.field public final w:Ljava/nio/ByteBuffer;

.field public final x:Ljava/io/OutputStream;

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, LSP0;->w:Ljava/nio/ByteBuffer;

    .line 3
    iput-object p1, p0, LSP0;->x:Ljava/io/OutputStream;

    .line 4
    iput-wide p2, p0, LSP0;->y:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 15
    :try_start_0
    iget-object v0, p0, LSP0;->x:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object v0, p0, LSP0;->C:Lorg/chromium/base/Callback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, LSP0;->C:Lorg/chromium/base/Callback;

    return-void

    :catch_0
    const/4 v0, 0x1

    const-string v1, "Failed to close stream."

    .line 18
    invoke-virtual {p0, v0, v1}, LSP0;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(IJ)V
    .locals 0

    .line 13
    iget-object p1, p0, LSP0;->C:Lorg/chromium/base/Callback;

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, LSP0;->e()V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x3

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "share"

    .line 19
    invoke-static {v1, p2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p2, p0, LSP0;->x:Ljava/io/OutputStream;

    invoke-static {p2}, LpU;->a(Ljava/io/Closeable;)V

    .line 21
    iget-object p2, p0, LSP0;->C:Lorg/chromium/base/Callback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, LSP0;->C:Lorg/chromium/base/Callback;

    return-void
.end method

.method public a(JJ)V
    .locals 1

    .line 4
    iget-object p1, p0, LSP0;->C:Lorg/chromium/base/Callback;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-wide p1, p0, LSP0;->y:J

    cmp-long v0, p3, p1

    if-lez v0, :cond_1

    const/16 p1, 0x8

    const-string p2, "Stream exceeds permitted size"

    .line 6
    invoke-virtual {p0, p1, p2}, LSP0;->a(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iput-wide p3, p0, LSP0;->z:J

    .line 8
    iget-wide p1, p0, LSP0;->A:J

    cmp-long v0, p1, p3

    if-ltz v0, :cond_2

    .line 9
    invoke-virtual {p0}, LSP0;->a()V

    return-void

    .line 10
    :cond_2
    sget-object p1, LK71;->a:Lj71;

    .line 11
    invoke-interface {p1}, Lj71;->a()LH71;

    move-result-object p1

    .line 12
    iget-object p2, p0, LSP0;->B:Lk71;

    sget-object p3, Li71;->c:Li71;

    new-instance p4, LRP0;

    invoke-direct {p4, p0}, LRP0;-><init>(LSP0;)V

    invoke-interface {p1, p2, p3, p4}, LH71;->a(Lq71;Li71;LG71;)I

    return-void
.end method

.method public a(Ly71;)V
    .locals 1

    .line 1
    iget-object v0, p0, LSP0;->C:Lorg/chromium/base/Callback;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p1, Ly71;->w:I

    const-string v0, "Connection error detected."

    .line 3
    invoke-virtual {p0, p1, v0}, LSP0;->a(ILjava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, LSP0;->B:Lk71;

    iget-object v1, p0, LSP0;->w:Ljava/nio/ByteBuffer;

    sget-object v2, Lo71;->c:Lo71;

    .line 2
    invoke-interface {v0, v1, v2}, Lk71;->a(Ljava/nio/ByteBuffer;Lo71;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object v0

    .line 3
    iget v1, v0, Lorg/chromium/mojo/system/ResultAnd;->a:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    return-void

    .line 4
    :cond_1
    iget v1, v0, Lorg/chromium/mojo/system/ResultAnd;->a:I

    if-eqz v1, :cond_2

    .line 5
    iget v0, v0, Lorg/chromium/mojo/system/ResultAnd;->a:I

    const-string v1, "Failed to read from blob."

    .line 6
    invoke-virtual {p0, v0, v1}, LSP0;->a(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-object v0, v0, Lorg/chromium/mojo/system/ResultAnd;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_3

    const-string v0, "No data available"

    .line 10
    invoke-virtual {p0, v2, v0}, LSP0;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ly71; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 11
    :cond_3
    :try_start_1
    iget-object v1, p0, LSP0;->x:Ljava/io/OutputStream;

    iget-object v2, p0, LSP0;->w:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, LSP0;->w:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ly71; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    :try_start_2
    iget-wide v1, p0, LSP0;->A:J

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, LSP0;->A:J

    .line 13
    iget-wide v3, p0, LSP0;->z:J

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    .line 14
    iget-wide v3, p0, LSP0;->z:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_4

    .line 15
    invoke-virtual {p0}, LSP0;->a()V

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    const-string v1, "Received more bytes than expected size."

    .line 16
    invoke-virtual {p0, v0, v1}, LSP0;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    const/16 v0, 0xf

    const-string v1, "Failed to write to stream."

    .line 17
    invoke-virtual {p0, v0, v1}, LSP0;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Ly71; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 18
    iget v0, v0, Ly71;->w:I

    const-string v1, "Failed to receive blob."

    .line 19
    invoke-virtual {p0, v0, v1}, LSP0;->a(ILjava/lang/String;)V

    return-void
.end method
