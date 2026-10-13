.class public final LYH;
.super LTG;
.source "PG"


# static fields
.field public static volatile h:[LYH;


# instance fields
.field public c:LZH;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Boolean;

.field public g:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LYH;->c:LZH;

    .line 3
    iput-object v0, p0, LYH;->d:Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, LYH;->e:Ljava/lang/Long;

    .line 5
    iput-object v0, p0, LYH;->f:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, LYH;->g:[B

    .line 7
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, LZG;->a:I

    return-void
.end method

.method public static c()[LYH;
    .locals 2

    .line 1
    sget-object v0, LYH;->h:[LYH;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, LXG;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, LYH;->h:[LYH;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [LYH;

    .line 4
    sput-object v1, LYH;->h:[LYH;

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
    sget-object v0, LYH;->h:[LYH;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 12
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 13
    iget-object v1, p0, LYH;->c:LZH;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 14
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget-object v1, p0, LYH;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, LSG;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_1
    iget-object v1, p0, LYH;->e:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 18
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, LSG;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_2
    iget-object v1, p0, LYH;->g:[B

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 20
    invoke-static {v2, v1}, LSG;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_3
    iget-object v1, p0, LYH;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    const/4 v2, 0x6

    .line 22
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, LSG;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 2

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 24
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, LQG;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LYH;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p1}, LQG;->c()[B

    move-result-object v0

    iput-object v0, p0, LYH;->g:[B

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p1}, LQG;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LYH;->e:Ljava/lang/Long;

    goto :goto_0

    .line 28
    :cond_4
    invoke-virtual {p1}, LQG;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LYH;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 29
    :cond_5
    iget-object v0, p0, LYH;->c:LZH;

    if-nez v0, :cond_6

    .line 30
    new-instance v0, LZH;

    invoke-direct {v0}, LZH;-><init>()V

    iput-object v0, p0, LYH;->c:LZH;

    .line 31
    :cond_6
    iget-object v0, p0, LYH;->c:LZH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    :cond_7
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 4

    .line 1
    iget-object v0, p0, LYH;->c:LZH;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LYH;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(IZ)V

    .line 5
    :cond_1
    iget-object v0, p0, LYH;->e:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, LSG;->a(IJ)V

    .line 7
    :cond_2
    iget-object v0, p0, LYH;->g:[B

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, LSG;->a(I[B)V

    .line 9
    :cond_3
    iget-object v0, p0, LYH;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(IZ)V

    .line 11
    :cond_4
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
