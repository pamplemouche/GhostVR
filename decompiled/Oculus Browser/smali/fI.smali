.class public final LfI;
.super LTG;
.source "PG"


# static fields
.field public static volatile e:[LfI;


# instance fields
.field public c:LZH;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LfI;->c:LZH;

    .line 3
    iput-object v0, p0, LfI;->d:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, LZG;->a:I

    return-void
.end method

.method public static c()[LfI;
    .locals 2

    .line 1
    sget-object v0, LfI;->e:[LfI;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, LXG;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, LfI;->e:[LfI;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [LfI;

    .line 4
    sput-object v1, LfI;->e:[LfI;

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
    sget-object v0, LfI;->e:[LfI;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 6
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 7
    iget-object v1, p0, LfI;->c:LZH;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 8
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_0
    iget-object v1, p0, LfI;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 10
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    :cond_1
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 4

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 12
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, LQG;->a()I

    move-result v1

    .line 14
    invoke-virtual {p1}, LQG;->f()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 15
    invoke-virtual {p1, v1}, LQG;->c(I)V

    .line 16
    invoke-virtual {p0, p1, v0}, LTG;->a(LQG;I)Z

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LfI;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, LfI;->c:LZH;

    if-nez v0, :cond_4

    .line 19
    new-instance v0, LZH;

    invoke-direct {v0}, LZH;-><init>()V

    iput-object v0, p0, LfI;->c:LZH;

    .line 20
    :cond_4
    iget-object v0, p0, LfI;->c:LZH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 2

    .line 1
    iget-object v0, p0, LfI;->c:LZH;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LfI;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 5
    :cond_1
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
