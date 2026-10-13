.class public LPE;
.super LSE;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final A:LUE;

.field public static final B:[C

.field public static final C:[C

.field public static final D:[C

.field public static final y:LPE;

.field public static final z:LOE;


# instance fields
.field public final w:[B

.field public volatile x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LPE;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2}, LPE;-><init>([B)V

    sput-object v0, LPE;->y:LPE;

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 3
    new-instance v0, LME;

    invoke-direct {v0}, LME;-><init>()V

    sput-object v0, LPE;->z:LOE;

    .line 4
    new-instance v0, LNE;

    invoke-direct {v0}, LNE;-><init>()V

    sput-object v0, LPE;->A:LUE;

    const/16 v0, 0x100

    new-array v2, v0, [C

    .line 5
    sput-object v2, LPE;->B:[C

    new-array v2, v0, [C

    .line 6
    sput-object v2, LPE;->C:[C

    new-array v0, v0, [C

    .line 7
    sput-object v0, LPE;->D:[C

    const/4 v0, 0x0

    .line 8
    :goto_0
    sget-object v2, LPE;->B:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 9
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "\\%03o"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10
    sget-object v4, LPE;->B:[C

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v4, v0

    .line 11
    sget-object v3, LPE;->C:[C

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v3, v0

    .line 12
    sget-object v3, LPE;->D:[C

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, LSE;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LPE;->x:I

    .line 3
    iput-object p1, p0, LPE;->w:[B

    return-void
.end method

.method public static a([B)LPE;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, LPE;

    invoke-direct {v0, p0}, LPE;-><init>([B)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static a(LbF;[B)LbF;
    .locals 5

    .line 3
    sget-object v0, LPE;->z:LOE;

    const/4 v1, 0x0

    .line 4
    :goto_0
    move-object v2, v0

    check-cast v2, LME;

    invoke-virtual {v2, p1}, LME;->a(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 5
    aget-byte v2, p1, v1

    const/16 v3, 0x9

    const/16 v4, 0x5c

    if-eq v2, v3, :cond_6

    const/16 v3, 0xa

    if-eq v2, v3, :cond_5

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    if-eq v2, v4, :cond_2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_0

    const/16 v3, 0x27

    if-eq v2, v3, :cond_0

    int-to-char v2, v2

    .line 6
    iget-object v3, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-gez v2, :cond_1

    add-int/lit16 v2, v2, 0x100

    .line 7
    :cond_1
    iget-object v3, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    sget-object v3, LPE;->B:[C

    aget-char v3, v3, v2

    .line 9
    iget-object v4, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    sget-object v3, LPE;->C:[C

    aget-char v3, v3, v2

    .line 11
    iget-object v4, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    sget-object v3, LPE;->D:[C

    aget-char v2, v3, v2

    .line 13
    iget-object v3, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 14
    :cond_2
    iget-object v2, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 15
    :cond_3
    iget-object v2, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 16
    :cond_4
    iget-object v2, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x72

    iget-object v3, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 17
    :cond_5
    iget-object v2, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x6e

    iget-object v3, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 18
    :cond_6
    iget-object v2, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x74

    iget-object v3, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-object p0
.end method

.method public static b([B)Ljava/lang/Object;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, LPE;->A:LUE;

    .line 3
    new-instance v1, LTE;

    invoke-direct {v1, v0, p0}, LTE;-><init>(LUE;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public a(LbF;)V
    .locals 1

    .line 2
    iget-object v0, p0, LPE;->w:[B

    invoke-static {p1, v0}, LPE;->a(LbF;[B)LbF;

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, LPE;

    .line 2
    iget-object v0, p0, LPE;->w:[B

    iget-object p1, p1, LPE;->w:[B

    .line 3
    sget-object v1, LPE;->z:LOE;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, -0x1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    .line 4
    :cond_2
    check-cast v1, LME;

    invoke-virtual {v1, v0}, LME;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, p1}, LME;->a(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_4

    .line 5
    aget-byte v4, v0, v2

    aget-byte v5, p1, v2

    if-eq v4, v5, :cond_3

    .line 6
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 7
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {v1, v0}, LME;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, p1}, LME;->a(Ljava/lang/Object;)I

    move-result p1

    :goto_1
    sub-int v2, v0, p1

    :goto_2
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, LPE;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, LPE;

    .line 3
    iget-object v0, p0, LPE;->w:[B

    iget-object p1, p1, LPE;->w:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, LPE;->x:I

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, LPE;->w:[B

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    .line 4
    aget-byte v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 5
    :goto_1
    iput v0, p0, LPE;->x:I

    :cond_2
    return v0
.end method
