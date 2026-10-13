.class public final LiI;
.super LTG;
.source "PG"


# static fields
.field public static volatile d:[LiI;


# instance fields
.field public c:[LZH;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    .line 2
    invoke-static {}, LZH;->c()[LZH;

    move-result-object v0

    iput-object v0, p0, LiI;->c:[LZH;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, LZG;->a:I

    return-void
.end method

.method public static c()[LiI;
    .locals 2

    .line 1
    sget-object v0, LiI;->d:[LiI;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, LXG;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, LiI;->d:[LiI;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [LiI;

    .line 4
    sput-object v1, LiI;->d:[LiI;

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
    sget-object v0, LiI;->d:[LiI;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 6
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 7
    iget-object v1, p0, LiI;->c:[LZH;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, LiI;->c:[LZH;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 9
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 10
    invoke-static {v3, v2}, LSG;->b(ILZG;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 5

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 12
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 13
    :cond_1
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v0

    .line 14
    iget-object v1, p0, LiI;->c:[LZH;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 15
    new-array v3, v0, [LZH;

    if-eqz v1, :cond_3

    .line 16
    iget-object v4, p0, LiI;->c:[LZH;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 17
    new-instance v2, LZH;

    invoke-direct {v2}, LZH;-><init>()V

    aput-object v2, v3, v1

    .line 18
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, LQG;->a(LZG;)V

    .line 19
    invoke-virtual {p1}, LQG;->h()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 20
    :cond_4
    new-instance v0, LZH;

    invoke-direct {v0}, LZH;-><init>()V

    aput-object v0, v3, v1

    .line 21
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    .line 22
    iput-object v3, p0, LiI;->c:[LZH;

    goto :goto_0

    :cond_5
    :goto_3
    return-object p0
.end method

.method public a(LSG;)V
    .locals 3

    .line 1
    iget-object v0, p0, LiI;->c:[LZH;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LiI;->c:[LZH;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v1}, LSG;->a(ILZG;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
