.class public LP71;
.super LN71;
.source "PG"

# interfaces
.implements LE71;


# direct methods
.method public constructor <init>(LN71;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LN71;-><init>(LN71;)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LN71;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    return-void
.end method


# virtual methods
.method public a(JJLD71;)Ljava/nio/ByteBuffer;
    .locals 7

    .line 1
    iget-object v0, p0, LN71;->x:Lorg/chromium/mojo/system/impl/CoreImpl;

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, LN71;->w:I

    .line 3
    iget v6, p5, Lp71;->a:I

    move-wide v2, p1

    move-wide v4, p3

    .line 4
    invoke-static/range {v0 .. v6}, LJ/N;->Mm6zKFIo(Ljava/lang/Object;IJJI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/mojo/system/ResultAnd;

    .line 5
    iget p2, p1, Lorg/chromium/mojo/system/ResultAnd;->a:I

    if-nez p2, :cond_0

    .line 6
    iget-object p1, p1, Lorg/chromium/mojo/system/ResultAnd;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1

    .line 8
    :cond_0
    new-instance p2, Ly71;

    .line 9
    iget p1, p1, Lorg/chromium/mojo/system/ResultAnd;->a:I

    .line 10
    invoke-direct {p2, p1}, Ly71;-><init>(I)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    .line 11
    throw p1
.end method
