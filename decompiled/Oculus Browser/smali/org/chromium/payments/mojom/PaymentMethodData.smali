.class public final Lorg/chromium/payments/mojom/PaymentMethodData;
.super LT61;
.source "PG"


# static fields
.field public static final j:[Lk61;

.field public static final k:Lk61;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:LP81;

.field public e:I

.field public f:I

.field public g:I

.field public h:[I

.field public i:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, Lorg/chromium/payments/mojom/PaymentMethodData;->j:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/payments/mojom/PaymentMethodData;->k:Lk61;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LT61;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    .line 2
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)Lorg/chromium/payments/mojom/PaymentMethodData;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, Lorg/chromium/payments/mojom/PaymentMethodData;->j:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, Lorg/chromium/payments/mojom/PaymentMethodData;

    invoke-direct {v1, v0}, Lorg/chromium/payments/mojom/PaymentMethodData;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->b:Ljava/lang/String;

    const/16 v0, 0x10

    .line 6
    invoke-virtual {p0, v0, v2}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->c:Ljava/lang/String;

    const/16 v0, 0x18

    const/4 v3, 0x1

    .line 7
    invoke-virtual {p0, v0, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 8
    invoke-static {v0}, LP81;->a(Lm61;)LP81;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->d:LP81;

    const/16 v0, 0x20

    .line 9
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_1

    if-gt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v4, "Invalid enum value."

    if-eqz v0, :cond_8

    const/16 v0, 0x24

    .line 10
    :try_start_1
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->f:I

    const/16 v0, 0x28

    .line 11
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->g:I

    const/16 v0, 0x30

    const/4 v5, -0x1

    .line 12
    invoke-virtual {p0, v0, v2, v5}, Lm61;->b(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->h:[I

    const/4 v0, 0x0

    .line 13
    :goto_1
    iget-object v6, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->h:[I

    array-length v6, v6

    if-ge v0, v6, :cond_4

    .line 14
    iget-object v6, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->h:[I

    aget v6, v6, v0

    if-ltz v6, :cond_2

    const/4 v7, 0x7

    if-gt v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :cond_3
    new-instance v0, Lo61;

    invoke-direct {v0, v4}, Lo61;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v0, 0x38

    .line 16
    invoke-virtual {p0, v0, v2, v5}, Lm61;->b(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->i:[I

    const/4 v0, 0x0

    .line 17
    :goto_3
    iget-object v5, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->i:[I

    array-length v5, v5

    if-ge v0, v5, :cond_7

    .line 18
    iget-object v5, v1, Lorg/chromium/payments/mojom/PaymentMethodData;->i:[I

    aget v5, v5, v0

    if-ltz v5, :cond_5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 19
    :cond_6
    new-instance v0, Lo61;

    invoke-direct {v0, v4}, Lo61;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_7
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    .line 21
    :cond_8
    :try_start_2
    new-instance v0, Lo61;

    invoke-direct {v0, v4}, Lo61;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 22
    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 4

    .line 23
    sget-object v0, Lorg/chromium/payments/mojom/PaymentMethodData;->k:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 25
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->c:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 26
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->d:LP81;

    const/16 v2, 0x18

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Lr61;->a(LT61;IZ)V

    .line 27
    iget v0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->e:I

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2}, Lr61;->a(II)V

    .line 28
    iget v0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->f:I

    const/16 v2, 0x24

    invoke-virtual {p1, v0, v2}, Lr61;->a(II)V

    .line 29
    iget v0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->g:I

    const/16 v2, 0x28

    invoke-virtual {p1, v0, v2}, Lr61;->a(II)V

    .line 30
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->h:[I

    const/4 v2, -0x1

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v3, v1, v2}, Lr61;->a([IIII)V

    .line 31
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->i:[I

    const/16 v3, 0x38

    invoke-virtual {p1, v0, v3, v1, v2}, Lr61;->a([IIII)V

    return-void
.end method
