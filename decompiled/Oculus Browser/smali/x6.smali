.class public Lx6;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final f:[B


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Z

.field public final c:I

.field public d:I

.field public e:C


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x700

    new-array v1, v0, [B

    .line 1
    sput-object v1, Lx6;->f:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    sget-object v2, Lx6;->f:[B

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx6;->a:Ljava/lang/CharSequence;

    .line 3
    iput-boolean p2, p0, Lx6;->b:Z

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lx6;->c:I

    return-void
.end method


# virtual methods
.method public a()B
    .locals 5

    .line 1
    iget-object v0, p0, Lx6;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lx6;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lx6;->e:C

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lx6;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lx6;->d:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4
    iget v1, p0, Lx6;->d:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lx6;->d:I

    .line 5
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0

    .line 6
    :cond_0
    iget v0, p0, Lx6;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lx6;->d:I

    .line 7
    iget-char v0, p0, Lx6;->e:C

    const/16 v1, 0x700

    if-ge v0, v1, :cond_1

    .line 8
    sget-object v1, Lx6;->f:[B

    aget-byte v0, v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 9
    :goto_0
    iget-boolean v1, p0, Lx6;->b:Z

    if-eqz v1, :cond_b

    .line 10
    iget-char v1, p0, Lx6;->e:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_7

    .line 11
    iget v0, p0, Lx6;->d:I

    .line 12
    :cond_2
    iget v1, p0, Lx6;->d:I

    if-lez v1, :cond_6

    .line 13
    iget-object v3, p0, Lx6;->a:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lx6;->d:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lx6;->e:C

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_3

    goto :goto_3

    :cond_3
    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v3, 0x22

    if-eq v1, v3, :cond_5

    const/16 v3, 0x27

    if-ne v1, v3, :cond_2

    .line 14
    :cond_5
    iget-char v1, p0, Lx6;->e:C

    .line 15
    :goto_1
    iget v3, p0, Lx6;->d:I

    if-lez v3, :cond_2

    iget-object v4, p0, Lx6;->a:Ljava/lang/CharSequence;

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lx6;->d:I

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lx6;->e:C

    if-eq v3, v1, :cond_2

    goto :goto_1

    .line 16
    :cond_6
    :goto_2
    iput v0, p0, Lx6;->d:I

    .line 17
    iput-char v2, p0, Lx6;->e:C

    goto :goto_4

    :cond_7
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_b

    .line 18
    iget v0, p0, Lx6;->d:I

    .line 19
    :cond_8
    iget v1, p0, Lx6;->d:I

    if-lez v1, :cond_a

    .line 20
    iget-object v3, p0, Lx6;->a:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lx6;->d:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lx6;->e:C

    const/16 v3, 0x26

    if-ne v1, v3, :cond_9

    :goto_3
    const/16 v0, 0xc

    goto :goto_5

    :cond_9
    if-ne v1, v2, :cond_8

    .line 21
    :cond_a
    iput v0, p0, Lx6;->d:I

    .line 22
    iput-char v2, p0, Lx6;->e:C

    :goto_4
    const/16 v0, 0xd

    :cond_b
    :goto_5
    return v0
.end method
