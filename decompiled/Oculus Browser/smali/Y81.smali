.class public final LY81;
.super LT61;
.source "PG"


# static fields
.field public static final g:[Lk61;

.field public static final h:Lk61;


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, LY81;->g:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LY81;->h:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)LY81;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, LY81;->g:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, LY81;

    invoke-direct {v1, v0}, LY81;-><init>(I)V

    const/4 v0, 0x0

    const/16 v2, 0x8

    .line 5
    invoke-virtual {p0, v2, v0}, Lm61;->a(II)Z

    move-result v3

    iput-boolean v3, v1, LY81;->b:Z

    const/4 v3, 0x1

    .line 6
    invoke-virtual {p0, v2, v3}, Lm61;->a(II)Z

    move-result v4

    iput-boolean v4, v1, LY81;->c:Z

    const/4 v4, 0x2

    .line 7
    invoke-virtual {p0, v2, v4}, Lm61;->a(II)Z

    move-result v5

    iput-boolean v5, v1, LY81;->d:Z

    const/4 v5, 0x3

    .line 8
    invoke-virtual {p0, v2, v5}, Lm61;->a(II)Z

    move-result v2

    iput-boolean v2, v1, LY81;->e:Z

    const/16 v2, 0xc

    .line 9
    invoke-virtual {p0, v2}, Lm61;->e(I)I

    move-result v2

    iput v2, v1, LY81;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_1

    if-gt v2, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    .line 11
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

    .line 12
    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 3

    .line 13
    sget-object v0, LY81;->h:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 14
    iget-boolean v0, p0, LY81;->b:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(ZII)V

    .line 15
    iget-boolean v0, p0, LY81;->c:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(ZII)V

    .line 16
    iget-boolean v0, p0, LY81;->d:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(ZII)V

    .line 17
    iget-boolean v0, p0, LY81;->e:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(ZII)V

    .line 18
    iget v0, p0, LY81;->f:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    return-void
.end method
