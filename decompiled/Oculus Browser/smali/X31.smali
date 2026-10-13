.class public final LX31;
.super LT61;
.source "PG"


# static fields
.field public static final f:[Lk61;

.field public static final g:Lk61;


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, LX31;->f:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LX31;->g:Lk61;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LT61;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    .line 2
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)LX31;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, LX31;->f:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, LX31;

    invoke-direct {v1, v0}, LX31;-><init>(I)V

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p0, v0}, Lm61;->d(I)F

    move-result v0

    iput v0, v1, LX31;->b:F

    const/16 v0, 0xc

    .line 6
    invoke-virtual {p0, v0}, Lm61;->d(I)F

    move-result v0

    iput v0, v1, LX31;->c:F

    const/16 v0, 0x10

    .line 7
    invoke-virtual {p0, v0}, Lm61;->d(I)F

    move-result v0

    iput v0, v1, LX31;->d:F

    const/16 v0, 0x14

    .line 8
    invoke-virtual {p0, v0}, Lm61;->d(I)F

    move-result v0

    iput v0, v1, LX31;->e:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 2

    .line 10
    sget-object v0, LX31;->g:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 11
    iget v0, p0, LX31;->b:F

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lr61;->a(FI)V

    .line 12
    iget v0, p0, LX31;->c:F

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lr61;->a(FI)V

    .line 13
    iget v0, p0, LX31;->d:F

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lr61;->a(FI)V

    .line 14
    iget v0, p0, LX31;->e:F

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lr61;->a(FI)V

    return-void
.end method
