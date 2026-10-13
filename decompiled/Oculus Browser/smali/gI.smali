.class public final LgI;
.super LTG;
.source "PG"


# static fields
.field public static volatile e:[LgI;


# instance fields
.field public c:LfI;

.field public d:LoI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LgI;->c:LfI;

    .line 3
    iput-object v0, p0, LgI;->d:LoI;

    .line 4
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, LZG;->a:I

    return-void
.end method

.method public static c()[LgI;
    .locals 2

    .line 1
    sget-object v0, LgI;->e:[LgI;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, LXG;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, LgI;->e:[LgI;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [LgI;

    .line 4
    sput-object v1, LgI;->e:[LgI;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, LgI;->e:[LgI;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 6
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 7
    iget-object v1, p0, LgI;->c:LfI;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 8
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_0
    iget-object v1, p0, LgI;->d:LoI;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 10
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 2

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 12
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, LgI;->d:LoI;

    if-nez v0, :cond_2

    .line 14
    new-instance v0, LoI;

    invoke-direct {v0}, LoI;-><init>()V

    iput-object v0, p0, LgI;->d:LoI;

    .line 15
    :cond_2
    iget-object v0, p0, LgI;->d:LoI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, LgI;->c:LfI;

    if-nez v0, :cond_4

    .line 17
    new-instance v0, LfI;

    invoke-direct {v0}, LfI;-><init>()V

    iput-object v0, p0, LgI;->c:LfI;

    .line 18
    :cond_4
    iget-object v0, p0, LgI;->c:LfI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 2

    .line 1
    iget-object v0, p0, LgI;->c:LfI;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LgI;->d:LoI;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 5
    :cond_1
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
