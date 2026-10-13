.class public final LMW;
.super LT61;
.source "PG"


# static fields
.field public static final e:[Lk61;

.field public static final f:Lk61;


# instance fields
.field public b:I

.field public c:Z

.field public d:I


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

    sput-object v0, LMW;->e:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LMW;->f:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)LMW;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, LMW;->e:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, LMW;

    invoke-direct {v1, v0}, LMW;-><init>(I)V

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, LMW;->b:I

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    const/4 v3, 0x2

    if-gt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/16 v0, 0xc

    .line 6
    invoke-virtual {p0, v0, v2}, Lm61;->a(II)Z

    move-result v0

    iput-boolean v0, v1, LMW;->c:Z

    const/16 v0, 0x10

    .line 7
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, LMW;->d:I

    .line 8
    invoke-static {v0}, LZX;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    .line 10
    :cond_2
    :try_start_1
    new-instance v0, Lo61;

    const-string v1, "Invalid enum value."

    invoke-direct {v0, v1}, Lo61;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 3

    .line 12
    sget-object v0, LMW;->f:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 13
    iget v0, p0, LMW;->b:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    .line 14
    iget-boolean v0, p0, LMW;->c:Z

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(ZII)V

    .line 15
    iget v0, p0, LMW;->d:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    return-void
.end method
