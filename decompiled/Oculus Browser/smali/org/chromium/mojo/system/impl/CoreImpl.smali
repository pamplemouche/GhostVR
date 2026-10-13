.class public Lorg/chromium/mojo/system/impl/CoreImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj71;


# instance fields
.field public final a:Ljava/lang/ThreadLocal;

.field public final b:I


# direct methods
.method public synthetic constructor <init>(LI71;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->a:Ljava/lang/ThreadLocal;

    const/16 p1, 0x8

    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-static {p0, v0, p1}, LJ/N;->MBIRtXF8(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p1

    .line 5
    iput p1, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->b:I

    return-void
.end method

.method public static newNativeCreationResult(III)Lorg/chromium/mojo/system/ResultAnd;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    new-instance v1, LJ71;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, LJ71;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static newReadMessageResult(I[B[I)Lorg/chromium/mojo/system/ResultAnd;
    .locals 1

    .line 1
    new-instance v0, Lv71;

    invoke-direct {v0}, Lv71;-><init>()V

    if-nez p0, :cond_0

    .line 2
    iput-object p1, v0, Lv71;->a:[B

    .line 3
    iput-object p2, v0, Lv71;->b:[I

    .line 4
    :cond_0
    new-instance p1, Lorg/chromium/mojo/system/ResultAnd;

    invoke-direct {p1, p0, v0}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object p1
.end method

.method public static newResultAndBuffer(ILjava/nio/ByteBuffer;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    invoke-direct {v0, p0, p1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static newResultAndInteger(II)Lorg/chromium/mojo/system/ResultAnd;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(LC71;J)LE71;
    .locals 3

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 37
    invoke-virtual {p0, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    .line 39
    iget-object p1, p1, LC71;->a:LB71;

    .line 40
    iget p1, p1, Lp71;->a:I

    .line 41
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-static {p0, v1, p2, p3}, LJ/N;->MZ0nRPS0(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/mojo/system/ResultAnd;

    .line 43
    iget p2, p1, Lorg/chromium/mojo/system/ResultAnd;->a:I

    if-nez p2, :cond_1

    .line 44
    new-instance p2, LP71;

    .line 45
    iget-object p1, p1, Lorg/chromium/mojo/system/ResultAnd;->b:Ljava/lang/Object;

    .line 46
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p2, p0, p1}, LP71;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    return-object p2

    .line 47
    :cond_1
    new-instance p2, Ly71;

    .line 48
    iget p1, p1, Lorg/chromium/mojo/system/ResultAnd;->a:I

    .line 49
    invoke-direct {p2, p1}, Ly71;-><init>(I)V

    throw p2
.end method

.method public a(I)LF71;
    .locals 1

    .line 50
    new-instance v0, LQ71;

    invoke-direct {v0, p0, p1}, LQ71;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    return-object v0
.end method

.method public a()LH71;
    .locals 1

    .line 51
    new-instance v0, Lorg/chromium/mojo/system/impl/WatcherImpl;

    invoke-direct {v0}, Lorg/chromium/mojo/system/impl/WatcherImpl;-><init>()V

    return-object v0
.end method

.method public a(Lm71;)Lz71;
    .locals 3

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    .line 17
    invoke-virtual {p0, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    .line 19
    iget-object v2, p1, Lm71;->a:Ll71;

    .line 20
    iget v2, v2, Lp71;->a:I

    .line 21
    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/16 v0, 0x8

    .line 22
    iget v2, p1, Lm71;->b:I

    .line 23
    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/16 v0, 0xc

    .line 24
    iget p1, p1, Lm71;->c:I

    .line 25
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-static {p0, v1}, LJ/N;->MhNaf1lV(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/mojo/system/ResultAnd;

    .line 27
    iget v0, p1, Lorg/chromium/mojo/system/ResultAnd;->a:I

    if-nez v0, :cond_1

    .line 28
    new-instance v0, LM71;

    .line 29
    iget-object v1, p1, Lorg/chromium/mojo/system/ResultAnd;->b:Ljava/lang/Object;

    .line 30
    check-cast v1, LJ71;

    iget-object v1, v1, Lz71;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p0, v1}, LM71;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    new-instance v1, LL71;

    .line 31
    iget-object p1, p1, Lorg/chromium/mojo/system/ResultAnd;->b:Ljava/lang/Object;

    .line 32
    check-cast p1, LJ71;

    iget-object p1, p1, Lz71;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p0, p1}, LL71;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    .line 33
    new-instance p1, Lz71;

    invoke-direct {p1, v0, v1}, Lz71;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 34
    :cond_1
    new-instance v0, Ly71;

    .line 35
    iget p1, p1, Lorg/chromium/mojo/system/ResultAnd;->a:I

    .line 36
    invoke-direct {v0, p1}, Ly71;-><init>(I)V

    throw v0
.end method

.method public a(Lt71;)Lz71;
    .locals 3

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    .line 3
    iget-object p1, p1, Lt71;->a:Ls71;

    .line 4
    iget p1, p1, Lp71;->a:I

    .line 5
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-static {p0, v1}, LJ/N;->MZhgS7uU(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/mojo/system/ResultAnd;

    .line 7
    iget v0, p1, Lorg/chromium/mojo/system/ResultAnd;->a:I

    if-nez v0, :cond_1

    .line 8
    new-instance v0, LO71;

    .line 9
    iget-object v1, p1, Lorg/chromium/mojo/system/ResultAnd;->b:Ljava/lang/Object;

    .line 10
    check-cast v1, LJ71;

    iget-object v1, v1, Lz71;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p0, v1}, LO71;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    new-instance v1, LO71;

    .line 11
    iget-object p1, p1, Lorg/chromium/mojo/system/ResultAnd;->b:Ljava/lang/Object;

    .line 12
    check-cast p1, LJ71;

    iget-object p1, p1, Lz71;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p0, p1}, LO71;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    .line 13
    new-instance p1, Lz71;

    invoke-direct {p1, v0, v1}, Lz71;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 14
    :cond_1
    new-instance v0, Ly71;

    .line 15
    iget p1, p1, Lorg/chromium/mojo/system/ResultAnd;->a:I

    .line 16
    invoke-direct {v0, p1}, Ly71;-><init>(I)V

    throw v0
.end method

.method public final b(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->b:I

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    iget v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->b:I

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    :cond_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
