.class public final LzX;
.super LT61;
.source "PG"


# static fields
.field public static final d:[Lk61;

.field public static final e:Lk61;


# instance fields
.field public b:Ln71;

.field public c:LlX;


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

    sput-object v0, LzX;->d:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LzX;->e:Lk61;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LT61;-><init>(II)V

    .line 2
    sget-object v0, Lr71;->w:Lr71;

    iput-object v0, p0, LzX;->b:Ln71;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    .line 3
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    .line 4
    sget-object p1, Lr71;->w:Lr71;

    iput-object p1, p0, LzX;->b:Ln71;

    return-void
.end method

.method public static a(LH61;)LzX;
    .locals 4

    .line 1
    new-instance v0, Lm61;

    invoke-direct {v0, p0}, Lm61;-><init>(LH61;)V

    .line 2
    invoke-virtual {v0}, Lm61;->b()V

    .line 3
    :try_start_0
    sget-object p0, LzX;->d:[Lk61;

    invoke-virtual {v0, p0}, Lm61;->a([Lk61;)Lk61;

    move-result-object p0

    .line 4
    iget p0, p0, Lk61;->b:I

    .line 5
    new-instance v1, LzX;

    invoke-direct {v1, p0}, LzX;-><init>(I)V

    const/16 p0, 0x8

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p0, v2}, Lm61;->f(IZ)LF71;

    move-result-object p0

    invoke-interface {p0}, LF71;->A()Ln71;

    move-result-object p0

    .line 7
    iput-object p0, v1, LzX;->b:Ln71;

    const/16 p0, 0xc

    const/4 v2, 0x1

    .line 8
    sget-object v3, LlX;->d:LA61;

    invoke-virtual {v0, p0, v2, v3}, Lm61;->a(IZLA61;)LC61;

    move-result-object p0

    check-cast p0, LlX;

    iput-object p0, v1, LzX;->c:LlX;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lm61;->a()V

    throw p0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 4

    .line 10
    sget-object v0, LzX;->e:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 11
    iget-object v0, p0, LzX;->b:Ln71;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Lq71;IZ)V

    .line 12
    iget-object v0, p0, LzX;->c:LlX;

    sget-object v1, LlX;->d:LA61;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3, v1}, Lr61;->a(LE61;IZLA61;)V

    return-void
.end method
