.class public final Lqf1;
.super LT61;
.source "PG"


# static fields
.field public static final f:[Lk61;

.field public static final g:Lk61;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:S

.field public e:LV71;


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

    sput-object v0, Lqf1;->f:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, Lqf1;->g:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lqf1;
    .locals 3

    .line 1
    new-instance v0, LH61;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, LH61;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    .line 2
    new-instance p0, Lm61;

    invoke-direct {p0, v0}, Lm61;-><init>(LH61;)V

    .line 3
    invoke-virtual {p0}, Lm61;->b()V

    .line 4
    :try_start_0
    sget-object v0, Lqf1;->f:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 5
    iget v0, v0, Lk61;->b:I

    .line 6
    new-instance v1, Lqf1;

    invoke-direct {v1, v0}, Lqf1;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v2}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lqf1;->b:Ljava/lang/String;

    const/16 v0, 0x10

    .line 8
    invoke-virtual {p0, v0, v2}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lqf1;->c:Ljava/lang/String;

    const/16 v0, 0x18

    .line 9
    invoke-virtual {p0, v0}, Lm61;->g(I)S

    move-result v0

    iput-short v0, v1, Lqf1;->d:S

    const/16 v0, 0x20

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, v0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 11
    invoke-static {v0}, LV71;->a(Lm61;)LV71;

    move-result-object v0

    iput-object v0, v1, Lqf1;->e:LV71;
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
    .locals 3

    .line 13
    sget-object v0, Lqf1;->g:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lqf1;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 15
    iget-object v0, p0, Lqf1;->c:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 16
    iget-short v0, p0, Lqf1;->d:S

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lr61;->a(SI)V

    .line 17
    iget-object v0, p0, Lqf1;->e:LV71;

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(LT61;IZ)V

    return-void
.end method
