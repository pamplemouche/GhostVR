.class public final La31;
.super LT61;
.source "PG"


# static fields
.field public static final d:[Lk61;

.field public static final e:Lk61;


# instance fields
.field public b:Ll21;

.field public c:LK21;


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

    sput-object v0, La31;->d:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, La31;->e:Lk61;

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

.method public static a(LH61;)La31;
    .locals 3

    .line 1
    new-instance v0, Lm61;

    invoke-direct {v0, p0}, Lm61;-><init>(LH61;)V

    .line 2
    invoke-virtual {v0}, Lm61;->b()V

    .line 3
    :try_start_0
    sget-object p0, La31;->d:[Lk61;

    invoke-virtual {v0, p0}, Lm61;->a([Lk61;)Lk61;

    move-result-object p0

    .line 4
    iget p0, p0, Lk61;->b:I

    .line 5
    new-instance v1, La31;

    invoke-direct {v1, p0}, La31;-><init>(I)V

    const/16 p0, 0x8

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object p0

    .line 7
    invoke-static {p0}, Ll21;->a(Lm61;)Ll21;

    move-result-object p0

    iput-object p0, v1, La31;->b:Ll21;

    const/16 p0, 0x10

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, p0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object p0

    .line 9
    invoke-static {p0}, LK21;->a(Lm61;)LK21;

    move-result-object p0

    iput-object p0, v1, La31;->c:LK21;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lm61;->a()V

    throw p0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 3

    .line 11
    sget-object v0, La31;->e:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 12
    iget-object v0, p0, La31;->b:Ll21;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(LT61;IZ)V

    .line 13
    iget-object v0, p0, La31;->c:LK21;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(LT61;IZ)V

    return-void
.end method
