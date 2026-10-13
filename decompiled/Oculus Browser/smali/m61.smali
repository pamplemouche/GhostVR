.class public Lm61;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LH61;

.field public final b:I

.field public final c:Ll61;


# direct methods
.method public constructor <init>(LH61;)V
    .locals 4

    .line 1
    new-instance v0, Ll61;

    .line 2
    iget-object v1, p1, LH61;->a:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v1, v1

    .line 4
    iget-object v3, p1, LH61;->b:Ljava/util/List;

    .line 5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ll61;-><init>(JI)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lm61;->a:LH61;

    .line 8
    iget-object p1, p1, LH61;->a:Ljava/nio/ByteBuffer;

    .line 9
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lm61;->b:I

    .line 11
    iput-object v0, p0, Lm61;->c:Ll61;

    return-void
.end method

.method public constructor <init>(LH61;Ll61;I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lm61;->a:LH61;

    .line 14
    iget-object p1, p1, LH61;->a:Ljava/nio/ByteBuffer;

    .line 15
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 16
    iput p3, p0, Lm61;->b:I

    .line 17
    iput-object p2, p0, Lm61;->c:Ll61;

    return-void
.end method


# virtual methods
.method public a(IZLA61;)LC61;
    .locals 1

    .line 30
    invoke-virtual {p0, p1, p2}, Lm61;->f(IZ)LF71;

    move-result-object p2

    invoke-interface {p2}, LF71;->B()Lx71;

    move-result-object p2

    .line 31
    invoke-interface {p2}, Lq71;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x4

    .line 32
    invoke-virtual {p0, p1}, Lm61;->e(I)I

    move-result p1

    .line 33
    invoke-virtual {p3, p2, p1}, LA61;->a(Lx71;I)LC61;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lk61;
    .locals 2

    const-wide/16 v0, 0x8

    .line 15
    invoke-virtual {p0, v0, v1, p1}, Lm61;->a(JI)Lk61;

    move-result-object p1

    return-object p1
.end method

.method public final a(IZ)Lk61;
    .locals 1

    add-int/lit8 v0, p1, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Lm61;->e(I)I

    move-result p1

    if-ltz v0, :cond_2

    if-gez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lo61;

    const-string p2, "Negative elements or version. Unsigned integers are not valid for java."

    invoke-direct {p1, p2}, Lo61;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    new-instance p2, Lk61;

    invoke-direct {p2, v0, p1}, Lk61;-><init>(II)V

    return-object p2

    .line 5
    :cond_2
    new-instance p1, Lo61;

    const-string p2, "Negative size. Unsigned integers are not valid for java."

    invoke-direct {p1, p2}, Lo61;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(JI)Lk61;
    .locals 6

    .line 34
    invoke-virtual {p0}, Lm61;->c()Lk61;

    move-result-object v0

    .line 35
    iget v1, v0, Lk61;->a:I

    int-to-long v1, v1

    iget v3, v0, Lk61;->b:I

    int-to-long v4, v3

    mul-long p1, p1, v4

    const-wide/16 v4, 0x8

    add-long/2addr p1, v4

    cmp-long v4, v1, p1

    if-ltz v4, :cond_2

    const/4 p1, -0x1

    if-eq p3, p1, :cond_1

    if-ne v3, p3, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Lo61;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect array length. Expected: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", but got: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Lk61;->b:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lo61;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0

    .line 37
    :cond_2
    new-instance p1, Lo61;

    const-string p2, "Array header is incorrect."

    invoke-direct {p1, p2}, Lo61;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([Lk61;)Lk61;
    .locals 6

    .line 6
    invoke-virtual {p0}, Lm61;->c()Lk61;

    move-result-object v0

    .line 7
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 8
    iget v2, v0, Lk61;->b:I

    aget-object v3, p1, v1

    iget v3, v3, Lk61;->b:I

    if-gt v2, v3, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 9
    aget-object v3, p1, v1

    .line 10
    iget v4, v0, Lk61;->b:I

    iget v5, v3, Lk61;->b:I

    if-lt v4, v5, :cond_0

    move-object v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 11
    iget p1, v2, Lk61;->a:I

    iget v1, v0, Lk61;->a:I

    if-ne p1, v1, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    new-instance p1, Lo61;

    const-string v0, "Header doesn\'t correspond to any known version."

    invoke-direct {p1, v0}, Lo61;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    iget v2, v0, Lk61;->a:I

    aget-object p1, p1, v1

    iget p1, p1, Lk61;->a:I

    if-lt v2, p1, :cond_4

    :goto_2
    return-object v0

    .line 14
    :cond_4
    new-instance p1, Lo61;

    const-string v0, "Message newer than the last known version cannot be shorter than required by the last known version."

    invoke-direct {p1, v0}, Lo61;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 5

    .line 38
    iget-object v0, p0, Lm61;->c:Ll61;

    .line 39
    iget-wide v1, v0, Ll61;->c:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, v0, Ll61;->c:J

    return-void
.end method

.method public a(II)Z
    .locals 3

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Lm61;->b(II)V

    .line 17
    invoke-virtual {p0, p1, v0}, Lm61;->b(II)V

    .line 18
    iget-object v1, p0, Lm61;->a:LH61;

    .line 19
    iget-object v1, v1, LH61;->a:Ljava/nio/ByteBuffer;

    .line 20
    iget v2, p0, Lm61;->b:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    shl-int p2, v0, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(III)[B
    .locals 2

    .line 21
    invoke-static {p2}, Ld61;->a(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lm61;->d(IZ)Lm61;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x1

    .line 22
    invoke-virtual {p1, v0, v1, p3}, Lm61;->a(JI)Lk61;

    move-result-object p2

    .line 23
    iget p2, p2, Lk61;->b:I

    new-array p2, p2, [B

    .line 24
    iget-object p3, p1, Lm61;->a:LH61;

    .line 25
    iget-object p3, p3, LH61;->a:Ljava/nio/ByteBuffer;

    .line 26
    iget v0, p1, Lm61;->b:I

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    iget-object p1, p1, Lm61;->a:LH61;

    .line 28
    iget-object p1, p1, LH61;->a:Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p2
.end method

.method public b(IZ)LG61;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lm61;->f(IZ)LF71;

    move-result-object p1

    invoke-interface {p1}, LF71;->B()Lx71;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_0
    new-instance p2, LG61;

    invoke-direct {p2, p1}, LG61;-><init>(Lx71;)V

    return-object p2
.end method

.method public b(I)Lk61;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lm61;->a(IZ)Lk61;

    move-result-object p1

    .line 2
    iget v0, p1, Lk61;->a:I

    if-nez v0, :cond_1

    .line 3
    iget v0, p1, Lk61;->b:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lo61;

    const-string v1, "Unexpected version tag for a null union. Expecting 0, found: "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lk61;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lo61;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    :goto_0
    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lo61;

    const-string v0, "Unexpected size of an union. The size must be 0 for a null union, or 16 for a non-null union."

    invoke-direct {p1, v0}, Lo61;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 5

    .line 21
    iget-object v0, p0, Lm61;->c:Ll61;

    .line 22
    iget-wide v1, v0, Ll61;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Ll61;->c:J

    const-wide/16 v3, 0x64

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lo61;

    const-string v1, "Recursion depth limit exceeded."

    invoke-direct {v0, v1}, Lo61;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(II)V
    .locals 1

    .line 17
    iget-object v0, p0, Lm61;->a:LH61;

    .line 18
    iget-object v0, v0, LH61;->a:Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/2addr p1, p2

    if-lt v0, p1, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance p1, Lo61;

    const-string p2, "Buffer is smaller than expected."

    invoke-direct {p1, p2}, Lo61;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(III)[I
    .locals 2

    .line 6
    invoke-static {p2}, Ld61;->a(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lm61;->d(IZ)Lm61;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x4

    .line 7
    invoke-virtual {p1, v0, v1, p3}, Lm61;->a(JI)Lk61;

    move-result-object p2

    .line 8
    iget p2, p2, Lk61;->b:I

    new-array p2, p2, [I

    .line 9
    iget-object p3, p1, Lm61;->a:LH61;

    .line 10
    iget-object p3, p3, LH61;->a:Ljava/nio/ByteBuffer;

    .line 11
    iget v0, p1, Lm61;->b:I

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-object p1, p1, Lm61;->a:LH61;

    .line 13
    iget-object p1, p1, LH61;->a:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object p2
.end method

.method public c(I)D
    .locals 2

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, p1, v0}, Lm61;->b(II)V

    .line 5
    iget-object v0, p0, Lm61;->a:LH61;

    .line 6
    iget-object v0, v0, LH61;->a:Ljava/nio/ByteBuffer;

    .line 7
    iget v1, p0, Lm61;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lk61;
    .locals 7

    .line 1
    iget-object v0, p0, Lm61;->c:Ll61;

    iget v1, p0, Lm61;->b:I

    int-to-long v2, v1

    add-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Ll61;->a(JJ)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lm61;->a(IZ)Lk61;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lm61;->c:Ll61;

    iget v2, p0, Lm61;->b:I

    add-int/lit8 v3, v2, 0x8

    int-to-long v3, v3

    iget v5, v0, Lk61;->a:I

    add-int/2addr v2, v5

    int-to-long v5, v2

    invoke-virtual {v1, v3, v4, v5, v6}, Ll61;->a(JJ)V

    return-object v0
.end method

.method public c(IZ)Lx71;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lm61;->f(IZ)LF71;

    move-result-object p1

    invoke-interface {p1}, LF71;->B()Lx71;

    move-result-object p1

    return-object p1
.end method

.method public c(III)[Lx71;
    .locals 5

    .line 9
    invoke-static {p2}, Ld61;->a(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lm61;->d(IZ)Lm61;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x4

    .line 10
    invoke-virtual {p1, v0, v1, p3}, Lm61;->a(JI)Lk61;

    move-result-object p3

    .line 11
    iget p3, p3, Lk61;->b:I

    new-array v0, p3, [Lx71;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_2

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x8

    and-int/lit8 v4, p2, 0x2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 12
    :goto_1
    invoke-virtual {p1, v3, v4}, Lm61;->c(IZ)Lx71;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public d(I)F
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lm61;->b(II)V

    .line 2
    iget-object v0, p0, Lm61;->a:LH61;

    .line 3
    iget-object v0, v0, LH61;->a:Ljava/nio/ByteBuffer;

    .line 4
    iget v1, p0, Lm61;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public d(IZ)Lm61;
    .locals 5

    .line 5
    iget v0, p0, Lm61;->b:I

    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, p1}, Lm61;->f(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lo61;

    const-string p2, "Trying to decode null pointer for a non-nullable type."

    invoke-direct {p1, p2}, Lo61;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    int-to-long p1, v0

    add-long/2addr p1, v1

    long-to-int p2, p1

    .line 8
    new-instance p1, Lm61;

    iget-object v0, p0, Lm61;->a:LH61;

    iget-object v1, p0, Lm61;->c:Ll61;

    invoke-direct {p1, v0, v1, p2}, Lm61;-><init>(LH61;Ll61;I)V

    return-object p1
.end method

.method public e(I)I
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lm61;->b(II)V

    .line 2
    iget-object v0, p0, Lm61;->a:LH61;

    .line 3
    iget-object v0, v0, LH61;->a:Ljava/nio/ByteBuffer;

    .line 4
    iget v1, p0, Lm61;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public e(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lm61;->a(III)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/String;

    const-string v0, "utf8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2
.end method

.method public f(I)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lm61;->b(II)V

    .line 2
    iget-object v0, p0, Lm61;->a:LH61;

    .line 3
    iget-object v0, v0, LH61;->a:Ljava/nio/ByteBuffer;

    .line 4
    iget v1, p0, Lm61;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(IZ)LF71;
    .locals 5

    .line 5
    invoke-virtual {p0, p1}, Lm61;->e(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 6
    sget-object p1, Lr71;->w:Lr71;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lo61;

    const-string p2, "Trying to decode an invalid handle for a non-nullable type."

    invoke-direct {p1, p2}, Lo61;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    iget-object p2, p0, Lm61;->c:Ll61;

    .line 9
    iget v0, p2, Ll61;->a:I

    if-lt p1, v0, :cond_3

    int-to-long v0, p1

    .line 10
    iget-wide v2, p2, Ll61;->e:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    add-int/lit8 v0, p1, 0x1

    .line 11
    iput v0, p2, Ll61;->a:I

    .line 12
    iget-object p2, p0, Lm61;->a:LH61;

    .line 13
    iget-object p2, p2, LH61;->b:Ljava/util/List;

    .line 14
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq71;

    .line 15
    :goto_0
    invoke-interface {p1}, Lq71;->q()LF71;

    move-result-object p1

    return-object p1

    .line 16
    :cond_2
    new-instance p1, Lo61;

    const-string p2, "Trying to access non present handle."

    invoke-direct {p1, p2}, Lo61;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    new-instance p1, Lo61;

    const-string p2, "Trying to access handle out of order."

    invoke-direct {p1, p2}, Lo61;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(I)S
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lm61;->b(II)V

    .line 2
    iget-object v0, p0, Lm61;->a:LH61;

    .line 3
    iget-object v0, v0, LH61;->a:Ljava/nio/ByteBuffer;

    .line 4
    iget v1, p0, Lm61;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method
