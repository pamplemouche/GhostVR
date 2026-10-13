.class public Lr61;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public final b:Lq61;


# direct methods
.method public constructor <init>(Lj71;I)V
    .locals 2

    .line 1
    new-instance v0, Lq61;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lq61;-><init>(Lj71;ILp61;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lr61;->b:Lq61;

    .line 4
    iget p1, v0, Lq61;->d:I

    iput p1, p0, Lr61;->a:I

    return-void
.end method

.method public constructor <init>(Lq61;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lr61;->b:Lq61;

    .line 7
    iget p1, p1, Lq61;->d:I

    iput p1, p0, Lr61;->a:I

    return-void
.end method


# virtual methods
.method public a()LH61;
    .locals 3

    .line 1
    iget-object v0, p0, Lr61;->b:Lq61;

    iget-object v0, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    iget-object v0, p0, Lr61;->b:Lq61;

    iget-object v1, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    iget v0, v0, Lq61;->d:I

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3
    new-instance v0, LH61;

    iget-object v1, p0, Lr61;->b:Lq61;

    iget-object v2, v1, Lq61;->b:Ljava/nio/ByteBuffer;

    iget-object v1, v1, Lq61;->c:Ljava/util/List;

    invoke-direct {v0, v2, v1}, LH61;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    return-object v0
.end method

.method public a(III)Lr61;
    .locals 1

    const/16 v0, 0x8

    .line 57
    invoke-virtual {p0, v0, p1, p2, p3}, Lr61;->a(IIII)Lr61;

    move-result-object p1

    return-object p1
.end method

.method public final a(IIII)Lr61;
    .locals 1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_1

    if-ne p4, p2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, LQ61;

    const-string p2, "Trying to encode a fixed array of incorrect length."

    invoke-direct {p1, p2}, LQ61;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    mul-int p1, p1, p2

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lr61;->b(III)Lr61;

    move-result-object p1

    return-object p1
.end method

.method public a(DI)V
    .locals 2

    .line 23
    iget-object v0, p0, Lr61;->b:Lq61;

    iget-object v0, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lr61;->a:I

    add-int/2addr v1, p3

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(FI)V
    .locals 2

    .line 21
    iget-object v0, p0, Lr61;->b:Lq61;

    iget-object v0, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lr61;->a:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 20
    iget-object v0, p0, Lr61;->b:Lq61;

    iget-object v0, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lr61;->a:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 73
    iget-object p2, p0, Lr61;->b:Lq61;

    iget-object p2, p2, Lq61;->b:Ljava/nio/ByteBuffer;

    iget v0, p0, Lr61;->a:I

    add-int/2addr v0, p1

    const/4 p1, -0x1

    invoke-virtual {p2, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void

    .line 74
    :cond_0
    new-instance p1, LQ61;

    const-string p2, "Trying to encode an invalid handle for a non-nullable type."

    invoke-direct {p1, p2}, LQ61;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(JI)V
    .locals 2

    .line 22
    iget-object v0, p0, Lr61;->b:Lq61;

    iget-object v0, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lr61;->a:I

    add-int/2addr v1, p3

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(LE61;IZLA61;)V
    .locals 2

    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p0, p2, p3}, Lr61;->a(IZ)V

    const/4 p1, 0x0

    add-int/lit8 p2, p2, 0x4

    .line 38
    invoke-virtual {p0, p1, p2}, Lr61;->a(II)V

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lr61;->b:Lq61;

    iget-object v0, v0, Lq61;->a:Lj71;

    if-eqz v0, :cond_2

    .line 40
    instance-of v1, p1, LC61;

    if-eqz v1, :cond_1

    .line 41
    check-cast p1, LC61;

    check-cast p1, Lz61;

    .line 42
    iget-object p1, p1, Lz61;->w:Ly61;

    .line 43
    iget-object p4, p1, Ly61;->x:LK61;

    check-cast p4, Lx61;

    .line 44
    invoke-interface {p4}, Lx61;->y()Lq71;

    move-result-object p4

    check-cast p4, Lx71;

    .line 45
    invoke-virtual {p0, p4, p2, p3}, Lr61;->a(Lq71;IZ)V

    .line 46
    iget p1, p1, Ly61;->z:I

    add-int/lit8 p2, p2, 0x4

    .line 47
    invoke-virtual {p0, p1, p2}, Lr61;->a(II)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 48
    invoke-interface {v0, v1}, Lj71;->a(Lt71;)Lz71;

    move-result-object v0

    .line 49
    iget-object v1, v0, Lz71;->a:Ljava/lang/Object;

    check-cast v1, Lx71;

    invoke-virtual {p4, p1, v1}, LA61;->a(LE61;Lx71;)V

    .line 50
    iget-object p1, v0, Lz71;->b:Ljava/lang/Object;

    check-cast p1, Lq71;

    invoke-virtual {p0, p1, p2, p3}, Lr61;->a(Lq71;IZ)V

    .line 51
    invoke-virtual {p4}, LA61;->b()I

    move-result p1

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, p2}, Lr61;->a(II)V

    return-void

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The encoder has been created without a Core. It can\'t encode an interface."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(LG61;IZ)V
    .locals 1

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0, p2, p3}, Lr61;->a(IZ)V

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lr61;->b:Lq61;

    iget-object v0, v0, Lq61;->a:Lj71;

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p1}, LG61;->y()Lx71;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lr61;->a(Lq71;IZ)V

    return-void

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The encoder has been created without a Core. It can\'t encode an interface."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(LT61;IZ)V
    .locals 4

    if-nez p1, :cond_0

    .line 24
    invoke-virtual {p0, p2, p3}, Lr61;->b(IZ)V

    return-void

    .line 25
    :cond_0
    iget-object p3, p0, Lr61;->b:Lq61;

    iget p3, p3, Lq61;->d:I

    int-to-long v0, p3

    iget p3, p0, Lr61;->a:I

    add-int/2addr p3, p2

    int-to-long v2, p3

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p2}, Lr61;->a(JI)V

    .line 26
    invoke-virtual {p1, p0}, LT61;->a(Lr61;)V

    return-void
.end method

.method public a(LU61;IZ)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, LQ61;

    const-string p2, "Trying to encode a null pointer for a non-nullable type."

    invoke-direct {p1, p2}, LQ61;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const-wide/16 v0, 0x0

    .line 28
    invoke-virtual {p0, v0, v1, p2}, Lr61;->a(JI)V

    add-int/lit8 p2, p2, 0x8

    .line 29
    invoke-virtual {p0, v0, v1, p2}, Lr61;->a(JI)V

    return-void

    .line 30
    :cond_2
    invoke-virtual {p1, p0, p2}, LU61;->a(Lr61;I)V

    return-void
.end method

.method public a(Ljava/lang/String;IZ)V
    .locals 1

    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0, p2, p3}, Lr61;->b(IZ)V

    return-void

    :cond_0
    const-string v0, "utf8"

    .line 32
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lr61;->a([BIII)V

    return-void
.end method

.method public a(Lk61;)V
    .locals 5

    .line 4
    iget-object v0, p0, Lr61;->b:Lq61;

    iget v1, p1, Lk61;->a:I

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v1, v1, -0x8

    .line 5
    iget v2, v0, Lq61;->d:I

    add-int/2addr v2, v1

    iput v2, v0, Lq61;->d:I

    .line 6
    iget-object v1, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, v0, Lq61;->d:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    .line 8
    iget v2, v0, Lq61;->d:I

    if-ge v1, v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 10
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 11
    iget-object v2, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-object v2, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 13
    iget-object v2, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 14
    iput-object v1, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    .line 15
    :goto_1
    iget v0, p1, Lk61;->a:I

    invoke-virtual {p0, v0, v3}, Lr61;->a(II)V

    .line 16
    iget p1, p1, Lk61;->b:I

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lr61;->a(II)V

    return-void
.end method

.method public a(Lq71;IZ)V
    .locals 1

    if-eqz p1, :cond_1

    .line 33
    invoke-interface {p1}, Lq71;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget-object p3, p0, Lr61;->b:Lq61;

    iget-object p3, p3, Lq61;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p0, p3, p2}, Lr61;->a(II)V

    .line 35
    iget-object p2, p0, Lr61;->b:Lq61;

    iget-object p2, p2, Lq61;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lr61;->a(IZ)V

    :goto_1
    return-void
.end method

.method public a(SI)V
    .locals 2

    .line 19
    iget-object v0, p0, Lr61;->b:Lq61;

    iget-object v0, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lr61;->a:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(ZII)V
    .locals 1

    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Lr61;->b:Lq61;

    iget-object p1, p1, Lq61;->b:Ljava/nio/ByteBuffer;

    iget v0, p0, Lr61;->a:I

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    const/4 v0, 0x1

    shl-int p3, v0, p3

    int-to-byte p3, p3

    or-int/2addr p1, p3

    int-to-byte p1, p1

    .line 18
    iget-object p3, p0, Lr61;->b:Lq61;

    iget-object p3, p3, Lq61;->b:Ljava/nio/ByteBuffer;

    iget v0, p0, Lr61;->a:I

    add-int/2addr v0, p2

    invoke-virtual {p3, v0, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public a([BIII)V
    .locals 0

    if-nez p1, :cond_0

    .line 58
    invoke-static {p3}, Ld61;->a(I)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lr61;->b(IZ)V

    return-void

    :cond_0
    const/4 p3, -0x1

    if-eq p4, p3, :cond_2

    .line 59
    array-length p3, p1

    if-ne p4, p3, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    new-instance p1, LQ61;

    const-string p2, "Trying to encode a fixed array of incorrect length."

    invoke-direct {p1, p2}, LQ61;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_2
    :goto_0
    array-length p3, p1

    .line 62
    array-length p4, p1

    invoke-virtual {p0, p4, p3, p2}, Lr61;->b(III)Lr61;

    move-result-object p2

    .line 63
    iget-object p3, p2, Lr61;->b:Lq61;

    iget-object p3, p3, Lq61;->b:Ljava/nio/ByteBuffer;

    iget p4, p2, Lr61;->a:I

    add-int/lit8 p4, p4, 0x8

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    iget-object p2, p2, Lr61;->b:Lq61;

    iget-object p2, p2, Lq61;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a([IIII)V
    .locals 1

    if-nez p1, :cond_0

    .line 65
    invoke-static {p3}, Ld61;->a(I)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lr61;->b(IZ)V

    return-void

    :cond_0
    const/4 p3, 0x4

    .line 66
    array-length v0, p1

    invoke-virtual {p0, p3, v0, p2, p4}, Lr61;->a(IIII)Lr61;

    move-result-object p2

    .line 67
    iget-object p3, p2, Lr61;->b:Lq61;

    iget-object p3, p3, Lq61;->b:Ljava/nio/ByteBuffer;

    iget p4, p2, Lr61;->a:I

    add-int/lit8 p4, p4, 0x8

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    iget-object p2, p2, Lr61;->b:Lq61;

    iget-object p2, p2, Lq61;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    return-void
.end method

.method public a([Lq71;III)V
    .locals 4

    if-nez p1, :cond_0

    .line 69
    invoke-static {p3}, Ld61;->a(I)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lr61;->b(IZ)V

    return-void

    .line 70
    :cond_0
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, p2, p4}, Lr61;->a(IIII)Lr61;

    move-result-object p2

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 71
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 72
    aget-object v1, p1, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x8

    and-int/lit8 v3, p3, 0x2

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2, v1, v2, v3}, Lr61;->a(Lq71;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(III)Lr61;
    .locals 5

    .line 5
    iget-object v0, p0, Lr61;->b:Lq61;

    iget v0, v0, Lq61;->d:I

    int-to-long v0, v0

    iget v2, p0, Lr61;->a:I

    add-int/2addr v2, p3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p3}, Lr61;->a(JI)V

    add-int/lit8 p1, p1, 0x8

    .line 6
    new-instance p3, Lr61;

    iget-object v0, p0, Lr61;->b:Lq61;

    invoke-direct {p3, v0}, Lr61;-><init>(Lq61;)V

    .line 7
    iget-object v0, p3, Lr61;->b:Lq61;

    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v1, v1, -0x8

    .line 8
    iget v2, v0, Lq61;->d:I

    add-int/2addr v2, v1

    iput v2, v0, Lq61;->d:I

    .line 9
    iget-object v1, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, v0, Lq61;->d:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    .line 11
    iget v2, v0, Lq61;->d:I

    if-ge v1, v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 13
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    iget-object v2, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    iget-object v2, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    iget-object v2, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 17
    iput-object v1, v0, Lq61;->b:Ljava/nio/ByteBuffer;

    .line 18
    :goto_1
    invoke-virtual {p3, p1, v3}, Lr61;->a(II)V

    .line 19
    iget-object p1, p3, Lr61;->b:Lq61;

    iget-object p1, p1, Lq61;->b:Ljava/nio/ByteBuffer;

    iget v0, p3, Lr61;->a:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p3
.end method

.method public b(Lk61;)Lr61;
    .locals 2

    .line 1
    new-instance v0, Lr61;

    iget-object v1, p0, Lr61;->b:Lq61;

    invoke-direct {v0, v1}, Lr61;-><init>(Lq61;)V

    .line 2
    invoke-virtual {v0, p1}, Lr61;->a(Lk61;)V

    return-object v0
.end method

.method public b(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lr61;->b:Lq61;

    iget-object p2, p2, Lq61;->b:Ljava/nio/ByteBuffer;

    iget v0, p0, Lr61;->a:I

    add-int/2addr v0, p1

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void

    .line 4
    :cond_0
    new-instance p1, LQ61;

    const-string p2, "Trying to encode a null pointer for a non-nullable type."

    invoke-direct {p1, p2}, LQ61;-><init>(Ljava/lang/String;)V

    throw p1
.end method
