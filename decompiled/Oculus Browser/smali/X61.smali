.class public final LX61;
.super LT61;
.source "PG"


# static fields
.field public static final b:[Lk61;

.field public static final c:Lk61;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, LX61;->b:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LX61;->c:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)LX61;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, LX61;->b:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, LX61;

    invoke-direct {v1, v0}, LX61;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 1

    .line 6
    sget-object v0, LX61;->c:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    return-void
.end method
