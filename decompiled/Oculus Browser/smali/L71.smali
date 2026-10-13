.class public LL71;
.super LN71;
.source "PG"

# interfaces
.implements Lk71;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LN71;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Lo71;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 3

    .line 1
    iget-object v0, p0, LN71;->x:Lorg/chromium/mojo/system/impl/CoreImpl;

    if-eqz v0, :cond_4

    .line 2
    iget v1, p0, LN71;->w:I

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 4
    :goto_0
    iget p2, p2, Lp71;->a:I

    .line 5
    invoke-static {v0, v1, p1, v2, p2}, LJ/N;->MBDORBtR(Ljava/lang/Object;ILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/mojo/system/ResultAnd;

    .line 6
    iget v0, p2, Lorg/chromium/mojo/system/ResultAnd;->a:I

    if-eqz v0, :cond_2

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ly71;

    .line 8
    iget p2, p2, Lorg/chromium/mojo/system/ResultAnd;->a:I

    .line 9
    invoke-direct {p1, p2}, Ly71;-><init>(I)V

    throw p1

    .line 10
    :cond_2
    :goto_1
    iget v0, p2, Lorg/chromium/mojo/system/ResultAnd;->a:I

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p2, Lorg/chromium/mojo/system/ResultAnd;->b:Ljava/lang/Object;

    .line 12
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_3
    return-object p2

    :cond_4
    const/4 p1, 0x0

    .line 13
    throw p1
.end method
