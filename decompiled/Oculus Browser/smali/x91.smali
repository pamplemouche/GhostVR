.class public final Lx91;
.super LT61;
.source "PG"


# static fields
.field public static final g:[Lk61;

.field public static final h:Lk61;


# instance fields
.field public b:Lc91;

.field public c:[Lorg/chromium/payments/mojom/PaymentMethodData;

.field public d:LU81;

.field public e:LY81;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x30

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, Lx91;->g:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, Lx91;->h:Lk61;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x30

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LT61;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    .line 2
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(LH61;)Lx91;
    .locals 8

    .line 1
    new-instance v0, Lm61;

    invoke-direct {v0, p0}, Lm61;-><init>(LH61;)V

    .line 2
    invoke-virtual {v0}, Lm61;->b()V

    .line 3
    :try_start_0
    sget-object p0, Lx91;->g:[Lk61;

    invoke-virtual {v0, p0}, Lm61;->a([Lk61;)Lk61;

    move-result-object p0

    .line 4
    iget p0, p0, Lk61;->b:I

    .line 5
    new-instance v1, Lx91;

    invoke-direct {v1, p0}, Lx91;-><init>(I)V

    .line 6
    sget-object p0, Lc91;->o:LA61;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2, p0}, Lm61;->a(IZLA61;)LC61;

    move-result-object p0

    check-cast p0, Lc91;

    iput-object p0, v1, Lx91;->b:Lc91;

    const/16 p0, 0x10

    .line 7
    invoke-virtual {v0, p0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object p0

    const/4 v4, -0x1

    .line 8
    invoke-virtual {p0, v4}, Lm61;->a(I)Lk61;

    move-result-object v4

    .line 9
    iget v5, v4, Lk61;->b:I

    new-array v5, v5, [Lorg/chromium/payments/mojom/PaymentMethodData;

    iput-object v5, v1, Lx91;->c:[Lorg/chromium/payments/mojom/PaymentMethodData;

    const/4 v5, 0x0

    .line 10
    :goto_0
    iget v6, v4, Lk61;->b:I

    if-ge v5, v6, :cond_0

    const/16 v6, 0x8

    invoke-static {v5, v6, v3, p0, v2}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v6

    .line 11
    iget-object v7, v1, Lx91;->c:[Lorg/chromium/payments/mojom/PaymentMethodData;

    invoke-static {v6}, Lorg/chromium/payments/mojom/PaymentMethodData;->a(Lm61;)Lorg/chromium/payments/mojom/PaymentMethodData;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x18

    .line 12
    invoke-virtual {v0, p0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object p0

    .line 13
    invoke-static {p0}, LU81;->a(Lm61;)LU81;

    move-result-object p0

    iput-object p0, v1, Lx91;->d:LU81;

    const/16 p0, 0x20

    .line 14
    invoke-virtual {v0, p0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object p0

    .line 15
    invoke-static {p0}, LY81;->a(Lm61;)LY81;

    move-result-object p0

    iput-object p0, v1, Lx91;->e:LY81;

    const/16 p0, 0x28

    .line 16
    invoke-virtual {v0, p0, v2}, Lm61;->a(II)Z

    move-result p0

    iput-boolean p0, v1, Lx91;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lm61;->a()V

    throw p0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 6

    .line 18
    sget-object v0, Lx91;->h:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lx91;->b:Lc91;

    sget-object v1, Lc91;->o:LA61;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, v1}, Lr61;->a(LE61;IZLA61;)V

    .line 20
    iget-object v0, p0, Lx91;->c:[Lorg/chromium/payments/mojom/PaymentMethodData;

    const/16 v1, 0x10

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p1, v1, v3}, Lr61;->b(IZ)V

    goto :goto_1

    .line 22
    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v1, v4}, Lr61;->a(III)Lr61;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-object v4, p0, Lx91;->c:[Lorg/chromium/payments/mojom/PaymentMethodData;

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 24
    aget-object v4, v4, v1

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5, v3}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    iget-object v0, p0, Lx91;->d:LU81;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(LT61;IZ)V

    .line 26
    iget-object v0, p0, Lx91;->e:LY81;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(LT61;IZ)V

    .line 27
    iget-boolean v0, p0, Lx91;->f:Z

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(ZII)V

    return-void
.end method
