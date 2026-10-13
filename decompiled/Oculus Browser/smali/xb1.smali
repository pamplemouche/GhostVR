.class public final Lxb1;
.super LT61;
.source "PG"


# static fields
.field public static final e:[Lk61;

.field public static final f:Lk61;


# instance fields
.field public b:Lyb1;

.field public c:J

.field public d:LS71;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, Lxb1;->e:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, Lxb1;->f:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)Lxb1;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, Lxb1;->e:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, Lxb1;

    invoke-direct {v1, v0}, Lxb1;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lyb1;->a(Lm61;)Lyb1;

    move-result-object v0

    iput-object v0, v1, Lxb1;->b:Lyb1;

    const/16 v0, 0x10

    .line 7
    invoke-virtual {p0, v0}, Lm61;->f(I)J

    move-result-wide v2

    iput-wide v2, v1, Lxb1;->c:J

    const/16 v0, 0x18

    .line 8
    invoke-static {p0, v0}, LS71;->a(Lm61;I)LS71;

    move-result-object v0

    iput-object v0, v1, Lxb1;->d:LS71;
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
    .locals 4

    .line 10
    sget-object v0, Lxb1;->f:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lxb1;->b:Lyb1;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(LT61;IZ)V

    .line 12
    iget-wide v2, p0, Lxb1;->c:J

    const/16 v0, 0x10

    invoke-virtual {p1, v2, v3, v0}, Lr61;->a(JI)V

    .line 13
    iget-object v0, p0, Lxb1;->d:LS71;

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(LU61;IZ)V

    return-void
.end method
