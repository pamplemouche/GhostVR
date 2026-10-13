.class public final Lorg/chromium/payments/mojom/PaymentDetailsModifier;
.super LT61;
.source "PG"


# static fields
.field public static final e:[Lk61;

.field public static final f:Lk61;


# instance fields
.field public b:Lorg/chromium/payments/mojom/PaymentItem;

.field public c:[Lorg/chromium/payments/mojom/PaymentItem;

.field public d:Lorg/chromium/payments/mojom/PaymentMethodData;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->e:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->f:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)Lorg/chromium/payments/mojom/PaymentDetailsModifier;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->e:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    invoke-direct {v1, v0}, Lorg/chromium/payments/mojom/PaymentDetailsModifier;-><init>(I)V

    const/4 v0, 0x1

    const/16 v2, 0x8

    .line 5
    invoke-virtual {p0, v2, v0}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lorg/chromium/payments/mojom/PaymentItem;->a(Lm61;)Lorg/chromium/payments/mojom/PaymentItem;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->b:Lorg/chromium/payments/mojom/PaymentItem;

    const/16 v0, 0x10

    const/4 v3, 0x0

    .line 7
    invoke-virtual {p0, v0, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    const/4 v4, -0x1

    .line 8
    invoke-virtual {v0, v4}, Lm61;->a(I)Lk61;

    move-result-object v4

    .line 9
    iget v5, v4, Lk61;->b:I

    new-array v5, v5, [Lorg/chromium/payments/mojom/PaymentItem;

    iput-object v5, v1, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    const/4 v5, 0x0

    .line 10
    :goto_0
    iget v6, v4, Lk61;->b:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v2, v0, v3}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v6

    .line 11
    iget-object v7, v1, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    invoke-static {v6}, Lorg/chromium/payments/mojom/PaymentItem;->a(Lm61;)Lorg/chromium/payments/mojom/PaymentItem;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x18

    .line 12
    invoke-virtual {p0, v0, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lorg/chromium/payments/mojom/PaymentMethodData;->a(Lm61;)Lorg/chromium/payments/mojom/PaymentMethodData;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->d:Lorg/chromium/payments/mojom/PaymentMethodData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 6

    .line 15
    sget-object v0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->f:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->b:Lorg/chromium/payments/mojom/PaymentItem;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(LT61;IZ)V

    .line 17
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    const/16 v1, 0x10

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p1, v1, v3}, Lr61;->b(IZ)V

    goto :goto_1

    .line 19
    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v1, v4}, Lr61;->a(III)Lr61;

    move-result-object v0

    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v4, p0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->c:[Lorg/chromium/payments/mojom/PaymentItem;

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 21
    aget-object v4, v4, v1

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5, v3}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->d:Lorg/chromium/payments/mojom/PaymentMethodData;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(LT61;IZ)V

    return-void
.end method
