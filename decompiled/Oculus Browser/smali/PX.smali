.class public final LPX;
.super LT61;
.source "PG"


# static fields
.field public static final e:[Lk61;

.field public static final f:Lk61;


# instance fields
.field public b:I

.field public c:[B

.field public d:[I


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

    sput-object v0, LPX;->e:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LPX;->f:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)LPX;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, LPX;->e:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, LPX;

    invoke-direct {v1, v0}, LPX;-><init>(I)V

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, LPX;->b:I

    .line 6
    invoke-static {v0}, LTX;->a(I)V

    const/16 v0, 0x10

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 7
    invoke-virtual {p0, v0, v3, v2}, Lm61;->a(III)[B

    move-result-object v0

    iput-object v0, v1, LPX;->c:[B

    const/16 v0, 0x18

    .line 8
    invoke-virtual {p0, v0, v3, v2}, Lm61;->b(III)[I

    move-result-object v0

    iput-object v0, v1, LPX;->d:[I

    .line 9
    :goto_0
    iget-object v0, v1, LPX;->d:[I

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 10
    iget-object v0, v1, LPX;->d:[I

    aget v0, v0, v3

    invoke-static {v0}, LOW;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 4

    .line 12
    sget-object v0, LPX;->f:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 13
    iget v0, p0, LPX;->b:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    .line 14
    iget-object v0, p0, LPX;->c:[B

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2, v1}, Lr61;->a([BIII)V

    .line 15
    iget-object v0, p0, LPX;->d:[I

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v3, v2, v1}, Lr61;->a([IIII)V

    return-void
.end method
