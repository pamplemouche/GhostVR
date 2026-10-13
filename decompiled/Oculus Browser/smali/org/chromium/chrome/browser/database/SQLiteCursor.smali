.class public Lorg/chromium/chrome/browser/database/SQLiteCursor;
.super Landroid/database/AbstractCursor;
.source "PG"


# instance fields
.field public final A:Ljava/lang/Object;

.field public final B:Ljava/lang/Object;

.field public final C:Ljava/lang/Object;

.field public final D:LKT;

.field public w:J

.field public x:I

.field public y:[I

.field public final z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->x:I

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->z:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->A:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->B:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->C:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->D:LKT;

    .line 8
    iput-wide p1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    return-void
.end method

.method public static create(J)Lorg/chromium/chrome/browser/database/SQLiteCursor;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/database/SQLiteCursor;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1, p3, p4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result p2

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result p2

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result p2

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, p2, [B

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, [B

    array-length v1, v0

    if-lez v1, :cond_3

    .line 7
    invoke-virtual {p1, v0, p3, p4}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result p2

    goto :goto_0

    .line 8
    :cond_3
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 9
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result p2

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p1, p3, p4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_5

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_5
    invoke-virtual {p1}, Landroid/database/CursorWindow;->freeLastRow()V

    const/4 p1, 0x0

    return p1
.end method

.method public final b(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->y:[I

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnCount()I

    move-result v1

    .line 4
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->y:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    iget-object v3, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->y:[I

    iget-wide v4, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 6
    invoke-static {v4, v5, p0, v2}, LJ/N;->Mj53Fcpg(JLjava/lang/Object;I)I

    move-result v4

    .line 7
    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->y:[I

    aget p1, v0, p1

    return p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 4
    iget-wide v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 5
    invoke-static {v1, v2, p0}, LJ/N;->MMXVRMHD(JLjava/lang/Object;)V

    .line 6
    iput-wide v3, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 5

    if-ltz p1, :cond_9

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getCount()I

    move-result v0

    if-le p1, v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getPosition()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    .line 4
    invoke-virtual {p0, v1}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    .line 5
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 7
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnCount()I

    move-result p1

    .line 8
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 10
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getPosition()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    .line 11
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->b(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d4

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {p0, p2, v3, v1, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->a(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v3

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v1, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->a(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v3

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v1, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->a(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, p2, v3, v1, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->a(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v3

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v1, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->a(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_8
    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw p1

    :catch_0
    :goto_3
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    :cond_9
    :goto_4
    return-void
.end method

.method public getBlob(I)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->C:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 3
    invoke-static {v1, v2, p0, p1}, LJ/N;->M$y5OMoQ(JLjava/lang/Object;I)[B

    move-result-object p1

    .line 4
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MzRUX52l(JLjava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->B:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->x:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-wide v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 4
    invoke-static {v1, v2, p0}, LJ/N;->MYg7mvxo(JLjava/lang/Object;)I

    move-result v1

    .line 5
    iput v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->x:I

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->x:I

    return v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->MwhZ6Q97(JLjava/lang/Object;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->MwhZ6Q97(JLjava/lang/Object;I)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getInt(I)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->MlsHIYMp(JLjava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->MvGp3edK(JLjava/lang/Object;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->MlsHIYMp(JLjava/lang/Object;I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->M0zQNAFQ(JLjava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isNull(I)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->M4VrFfY5(JLjava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public onMove(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->B:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->w:J

    .line 3
    invoke-static {v1, v2, p0, p2}, LJ/N;->MiTQIBC9(JLjava/lang/Object;I)I

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
