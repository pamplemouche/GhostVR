.class public final LF91;
.super LT61;
.source "PG"


# static fields
.field public static final g:[Lk61;

.field public static final h:Lk61;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:LS81;

.field public e:Ljava/lang/String;

.field public f:LQ81;


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

    sput-object v0, LF91;->g:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LF91;->h:Lk61;

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

.method public static a(Lm61;)LF91;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, LF91;->g:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, LF91;

    invoke-direct {v1, v0}, LF91;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LF91;->b:Ljava/lang/String;

    const/16 v0, 0x10

    .line 6
    invoke-virtual {p0, v0, v2}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LF91;->c:Ljava/lang/String;

    const/16 v0, 0x18

    const/4 v3, 0x1

    .line 7
    invoke-virtual {p0, v0, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 8
    invoke-static {v0}, LS81;->a(Lm61;)LS81;

    move-result-object v0

    iput-object v0, v1, LF91;->d:LS81;

    const/16 v0, 0x20

    .line 9
    invoke-virtual {p0, v0, v3}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LF91;->e:Ljava/lang/String;

    const/16 v0, 0x28

    .line 10
    invoke-virtual {p0, v0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 11
    invoke-static {v0}, LQ81;->a(Lm61;)LQ81;

    move-result-object v0

    iput-object v0, v1, LF91;->f:LQ81;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
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

    .line 13
    sget-object v0, LF91;->h:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 14
    iget-object v0, p0, LF91;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 15
    iget-object v0, p0, LF91;->c:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 16
    iget-object v0, p0, LF91;->d:LS81;

    const/4 v2, 0x1

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v3, v2}, Lr61;->a(LT61;IZ)V

    .line 17
    iget-object v0, p0, LF91;->e:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {p1, v0, v3, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 18
    iget-object v0, p0, LF91;->f:LQ81;

    const/16 v2, 0x28

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(LT61;IZ)V

    return-void
.end method
