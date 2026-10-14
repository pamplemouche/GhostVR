.class final Ld/at;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lb/ai;

.field private d:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lb/aj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lb/ay;

.field private g:Lb/an;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final h:Z

.field private i:Lb/ap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Lb/ae;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Lb/az;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ld/at;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lb/ai;Ljava/lang/String;Lb/ag;Lb/an;ZZZ)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lb/ag;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lb/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/at;->b:Ljava/lang/String;

    iput-object p2, p0, Ld/at;->c:Lb/ai;

    iput-object p3, p0, Ld/at;->d:Ljava/lang/String;

    new-instance p1, Lb/ay;

    invoke-direct {p1}, Lb/ay;-><init>()V

    iput-object p1, p0, Ld/at;->f:Lb/ay;

    iput-object p5, p0, Ld/at;->g:Lb/an;

    iput-boolean p6, p0, Ld/at;->h:Z

    if-eqz p4, :cond_0

    iget-object p1, p0, Ld/at;->f:Lb/ay;

    invoke-virtual {p1, p4}, Lb/ay;->a(Lb/ag;)Lb/ay;

    :cond_0
    if-eqz p7, :cond_1

    new-instance p1, Lb/ae;

    invoke-direct {p1}, Lb/ae;-><init>()V

    iput-object p1, p0, Ld/at;->j:Lb/ae;

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    new-instance p1, Lb/ap;

    invoke-direct {p1}, Lb/ap;-><init>()V

    iput-object p1, p0, Ld/at;->i:Lb/ap;

    iget-object p1, p0, Ld/at;->i:Lb/ap;

    sget-object p2, Lb/ao;->e:Lb/an;

    invoke-virtual {p1, p2}, Lb/ap;->a(Lb/an;)Lb/ap;

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    const-string v4, " \"<>^`{}|\\?#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez p1, :cond_0

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v3, Lc/f;

    invoke-direct {v3}, Lc/f;-><init>()V

    invoke-virtual {v3, p0, v1, v2}, Lc/f;->a(Ljava/lang/String;II)Lc/f;

    invoke-static {v3, p0, v2, v0, p1}, Ld/at;->a(Lc/f;Ljava/lang/String;IIZ)V

    invoke-virtual {v3}, Lc/f;->p()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static a(Lc/f;Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_2

    const-string v2, " \"<>^`{}|\\?#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    if-nez p4, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lc/f;->a(I)Lc/f;

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    :cond_3
    invoke-virtual {v0, v1}, Lc/f;->a(I)Lc/f;

    :goto_2
    invoke-virtual {v0}, Lc/f;->f()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lc/f;->i()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v3}, Lc/f;->b(I)Lc/f;

    sget-object v4, Ld/at;->a:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lc/f;->b(I)Lc/f;

    sget-object v4, Ld/at;->a:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lc/f;->b(I)Lc/f;

    goto :goto_2

    :cond_4
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method a()Lb/ax;
    .locals 5

    iget-object v0, p0, Ld/at;->e:Lb/aj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/aj;->c()Lb/ai;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/at;->c:Lb/ai;

    iget-object v1, p0, Ld/at;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/ai;->c(Ljava/lang/String;)Lb/ai;

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_0
    iget-object v1, p0, Ld/at;->k:Lb/az;

    if-nez v1, :cond_3

    iget-object v2, p0, Ld/at;->j:Lb/ae;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lb/ae;->a()Lb/ad;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Ld/at;->i:Lb/ap;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lb/ap;->a()Lb/ao;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Ld/at;->h:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-static {v1, v2}, Lb/az;->a(Lb/an;[B)Lb/az;

    move-result-object v1

    :cond_3
    :goto_1
    iget-object v2, p0, Ld/at;->g:Lb/an;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    new-instance v3, Ld/au;

    invoke-direct {v3, v1, v2}, Ld/au;-><init>(Lb/az;Lb/an;)V

    move-object v1, v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Ld/at;->f:Lb/ay;

    invoke-virtual {v2}, Lb/an;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4, v2}, Lb/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    :cond_5
    :goto_2
    iget-object v2, p0, Ld/at;->f:Lb/ay;

    invoke-virtual {v2, v0}, Lb/ay;->a(Lb/ai;)Lb/ay;

    move-result-object v0

    iget-object v2, p0, Ld/at;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lb/ay;->a(Ljava/lang/String;Lb/az;)Lb/ay;

    move-result-object v0

    invoke-virtual {v0}, Lb/ay;->a()Lb/ax;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/at;->c:Lb/ai;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/at;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Lb/ag;Lb/az;)V
    .locals 1

    iget-object v0, p0, Ld/at;->i:Lb/ap;

    invoke-virtual {v0, p1, p2}, Lb/ap;->a(Lb/ag;Lb/az;)Lb/ap;

    return-void
.end method

.method a(Lb/aq;)V
    .locals 1

    iget-object v0, p0, Ld/at;->i:Lb/ap;

    invoke-virtual {v0, p1}, Lb/ap;->a(Lb/aq;)Lb/ap;

    return-void
.end method

.method a(Lb/az;)V
    .locals 0

    iput-object p1, p0, Ld/at;->k:Lb/az;

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld/at;->d:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lb/an;->a(Ljava/lang/String;)Lb/an;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ld/at;->g:Lb/an;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Ld/at;->f:Lb/ay;

    invoke-virtual {v0, p1, p2}, Lb/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    :goto_0
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Ld/at;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ld/at;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld/at;->d:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld/at;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ld/at;->c:Lb/ai;

    invoke-virtual {v1, v0}, Lb/ai;->d(Ljava/lang/String;)Lb/aj;

    move-result-object v0

    iput-object v0, p0, Ld/at;->e:Lb/aj;

    iget-object v0, p0, Ld/at;->e:Lb/aj;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ld/at;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Malformed URL. Base: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ld/at;->c:Lb/ai;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ld/at;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    iget-object p3, p0, Ld/at;->e:Lb/aj;

    invoke-virtual {p3, p1, p2}, Lb/aj;->b(Ljava/lang/String;Ljava/lang/String;)Lb/aj;

    goto :goto_1

    :cond_2
    iget-object p3, p0, Ld/at;->e:Lb/aj;

    invoke-virtual {p3, p1, p2}, Lb/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lb/aj;

    :goto_1
    return-void
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Ld/at;->j:Lb/ae;

    invoke-virtual {p3, p1, p2}, Lb/ae;->b(Ljava/lang/String;Ljava/lang/String;)Lb/ae;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Ld/at;->j:Lb/ae;

    invoke-virtual {p3, p1, p2}, Lb/ae;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ae;

    :goto_0
    return-void
.end method
