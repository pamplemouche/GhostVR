.class public final LWX;
.super LT61;
.source "PG"


# static fields
.field public static final f:[Lk61;

.field public static final g:Lk61;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:LjX;


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

    sput-object v0, LWX;->f:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LWX;->g:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)LWX;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, LWX;->f:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, LWX;

    invoke-direct {v1, v0}, LWX;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LWX;->b:Ljava/lang/String;

    const/16 v0, 0x10

    .line 6
    invoke-virtual {p0, v0, v2}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LWX;->c:Ljava/lang/String;

    const/16 v0, 0x18

    .line 7
    invoke-virtual {p0, v0}, Lm61;->f(I)J

    move-result-wide v3

    iput-wide v3, v1, LWX;->d:J

    const/16 v0, 0x20

    .line 8
    sget-object v3, LjX;->c:LA61;

    invoke-virtual {p0, v0, v2, v3}, Lm61;->a(IZLA61;)LC61;

    move-result-object v0

    check-cast v0, LjX;

    iput-object v0, v1, LWX;->e:LjX;
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
    sget-object v0, LWX;->g:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 11
    iget-object v0, p0, LWX;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 12
    iget-object v0, p0, LWX;->c:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 13
    iget-wide v2, p0, LWX;->d:J

    const/16 v0, 0x18

    invoke-virtual {p1, v2, v3, v0}, Lr61;->a(JI)V

    .line 14
    iget-object v0, p0, LWX;->e:LjX;

    sget-object v2, LjX;->c:LA61;

    const/16 v3, 0x20

    invoke-virtual {p1, v0, v3, v1, v2}, Lr61;->a(LE61;IZLA61;)V

    return-void
.end method
