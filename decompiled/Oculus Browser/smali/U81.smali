.class public final LU81;
.super LT61;
.source "PG"


# static fields
.field public static final j:[Lk61;

.field public static final k:Lk61;


# instance fields
.field public b:Lorg/chromium/payments/mojom/PaymentItem;

.field public c:[Lorg/chromium/payments/mojom/PaymentItem;

.field public d:[LG91;

.field public e:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

.field public f:Ljava/lang/String;

.field public g:LO81;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x48

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, LU81;->j:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LU81;->k:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x48

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, LU81;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lm61;)LU81;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v1, LU81;->j:[Lk61;

    invoke-virtual {p0, v1}, Lm61;->a([Lk61;)Lk61;

    move-result-object v1

    .line 3
    iget v1, v1, Lk61;->b:I

    .line 4
    new-instance v2, LU81;

    invoke-direct {v2, v1}, LU81;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x1

    .line 5
    invoke-virtual {p0, v1, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v4

    .line 6
    invoke-static {v4}, Lorg/chromium/payments/mojom/PaymentItem;->a(Lm61;)Lorg/chromium/payments/mojom/PaymentItem;

    move-result-object v4

    iput-object v4, v2, LU81;->b:Lorg/chromium/payments/mojom/PaymentItem;

    const/16 v4, 0x10

    .line 7
    invoke-virtual {p0, v4, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 8
    iput-object v0, v2, LU81;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v4, v5}, Lm61;->a(I)Lk61;

    move-result-object v7

    .line 10
    iget v8, v7, Lk61;->b:I

    new-array v8, v8, [Lorg/chromium/payments/mojom/PaymentItem;

    iput-object v8, v2, LU81;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    const/4 v8, 0x0

    .line 11
    :goto_0
    iget v9, v7, Lk61;->b:I

    if-ge v8, v9, :cond_2

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v6}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v9

    .line 12
    iget-object v10, v2, LU81;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    invoke-static {v9}, Lorg/chromium/payments/mojom/PaymentItem;->a(Lm61;)Lorg/chromium/payments/mojom/PaymentItem;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v4, 0x18

    .line 13
    invoke-virtual {p0, v4, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v4

    if-nez v4, :cond_3

    .line 14
    iput-object v0, v2, LU81;->d:[LG91;

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v4, v5}, Lm61;->a(I)Lk61;

    move-result-object v7

    .line 16
    iget v8, v7, Lk61;->b:I

    new-array v8, v8, [LG91;

    iput-object v8, v2, LU81;->d:[LG91;

    const/4 v8, 0x0

    .line 17
    :goto_2
    iget v9, v7, Lk61;->b:I

    if-ge v8, v9, :cond_4

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v6}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v9

    .line 18
    iget-object v10, v2, LU81;->d:[LG91;

    invoke-static {v9}, LG91;->a(Lm61;)LG91;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/16 v4, 0x20

    .line 19
    invoke-virtual {p0, v4, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v4

    if-nez v4, :cond_5

    .line 20
    iput-object v0, v2, LU81;->e:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    goto :goto_5

    .line 21
    :cond_5
    invoke-virtual {v4, v5}, Lm61;->a(I)Lk61;

    move-result-object v0

    .line 22
    iget v5, v0, Lk61;->b:I

    new-array v5, v5, [Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    iput-object v5, v2, LU81;->e:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    const/4 v5, 0x0

    .line 23
    :goto_4
    iget v7, v0, Lk61;->b:I

    if-ge v5, v7, :cond_6

    const/16 v7, 0x8

    invoke-static {v5, v7, v1, v4, v6}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v7

    .line 24
    iget-object v8, v2, LU81;->e:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    invoke-static {v7}, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->a(Lm61;)Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    move-result-object v7

    aput-object v7, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    const/16 v0, 0x28

    .line 25
    invoke-virtual {p0, v0, v6}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, LU81;->f:Ljava/lang/String;

    const/16 v0, 0x30

    .line 26
    invoke-virtual {p0, v0, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 27
    invoke-static {v0}, LO81;->a(Lm61;)LO81;

    move-result-object v0

    iput-object v0, v2, LU81;->g:LO81;

    const/16 v0, 0x38

    .line 28
    invoke-virtual {p0, v0, v3}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, LU81;->h:Ljava/lang/String;

    const/16 v0, 0x40

    .line 29
    invoke-virtual {p0, v0, v3}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, LU81;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {p0}, Lm61;->a()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 8

    .line 31
    sget-object v0, LU81;->k:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 32
    iget-object v0, p0, LU81;->b:Lorg/chromium/payments/mojom/PaymentItem;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(LT61;IZ)V

    .line 33
    iget-object v0, p0, LU81;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    const/16 v3, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1, v3, v2}, Lr61;->b(IZ)V

    goto :goto_1

    .line 35
    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lr61;->a(III)Lr61;

    move-result-object v0

    const/4 v3, 0x0

    .line 36
    :goto_0
    iget-object v6, p0, LU81;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 37
    aget-object v6, v6, v3

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v5}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    iget-object v0, p0, LU81;->d:[LG91;

    const/16 v3, 0x18

    if-nez v0, :cond_2

    .line 39
    invoke-virtual {p1, v3, v2}, Lr61;->b(IZ)V

    goto :goto_3

    .line 40
    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lr61;->a(III)Lr61;

    move-result-object v0

    const/4 v3, 0x0

    .line 41
    :goto_2
    iget-object v6, p0, LU81;->d:[LG91;

    array-length v7, v6

    if-ge v3, v7, :cond_3

    .line 42
    aget-object v6, v6, v3

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v5}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 43
    :cond_3
    :goto_3
    iget-object v0, p0, LU81;->e:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    const/16 v3, 0x20

    if-nez v0, :cond_4

    .line 44
    invoke-virtual {p1, v3, v2}, Lr61;->b(IZ)V

    goto :goto_5

    .line 45
    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lr61;->a(III)Lr61;

    move-result-object v0

    const/4 v3, 0x0

    .line 46
    :goto_4
    iget-object v4, p0, LU81;->e:[Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    array-length v6, v4

    if-ge v3, v6, :cond_5

    .line 47
    aget-object v4, v4, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v4, v6, v5}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 48
    :cond_5
    :goto_5
    iget-object v0, p0, LU81;->f:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v5}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 49
    iget-object v0, p0, LU81;->g:LO81;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(LT61;IZ)V

    .line 50
    iget-object v0, p0, LU81;->h:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 51
    iget-object v0, p0, LU81;->i:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    return-void
.end method
