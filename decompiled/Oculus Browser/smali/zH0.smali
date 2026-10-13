.class public LzH0;
.super LSG0;
.source "PG"

# interfaces
.implements LxU;


# static fields
.field public static final E:Ljava/lang/Class;

.field public static F:J


# instance fields
.field public A:I

.field public B:I

.field public C:LRG0;

.field public D:LxI0;

.field public final w:I

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LzH0;

    sput-object v0, LzH0;->E:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, LzH0;->x:J

    .line 3
    iput-wide v0, p0, LzH0;->y:J

    .line 4
    iput-wide v0, p0, LzH0;->z:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, LzH0;->A:I

    .line 6
    iput p2, p0, LzH0;->w:I

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LzH0;->z:J

    .line 8
    iget p2, p0, LzH0;->w:I

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v0, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iput v0, p0, LzH0;->A:I

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, v1}, LzH0;->c(I)V

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, LzH0;->c(I)V

    .line 12
    :goto_1
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;I)LzH0;
    .locals 3

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 7
    sget-object v1, LzH0;->E:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, LzH0;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p0}, LzH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 10
    sget-object v1, LzH0;->E:Ljava/lang/Class;

    new-instance v2, LzH0;

    invoke-direct {v2, p0, p1}, LzH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;I)V

    invoke-virtual {v0, v1, v2}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object p0

    check-cast p0, LzH0;

    return-object p0
.end method

.method public static b(Lorg/chromium/chrome/browser/tab/Tab;)LzH0;
    .locals 1

    .line 5
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 6
    sget-object v0, LzH0;->E:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, LzH0;

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 11
    iget-object v0, p0, LzH0;->D:LxI0;

    if-eqz v0, :cond_0

    invoke-static {p1}, LoI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LpI0;

    move-result-object v0

    iget-object v1, p0, LzH0;->D:LxI0;

    check-cast v0, LrI0;

    .line 12
    iget-object v0, v0, LrI0;->d:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 13
    :cond_0
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(ZJJI)V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "Tab.RestoreResult"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    invoke-static {v1, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    long-to-int p1, p2

    const-string p2, "Tab.RestoreTime"

    .line 2
    invoke-static {p2, p1}, LfV;->c(Ljava/lang/String;I)V

    long-to-int p1, p4

    const-string p2, "Tab.PerceivedRestoreTime"

    .line 3
    invoke-static {p2, p1}, LfV;->c(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/16 p1, -0x323

    if-eq p6, p1, :cond_1

    const/16 p1, -0x89

    if-eq p6, p1, :cond_1

    const/16 p1, -0x6a

    if-eq p6, p1, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 5
    invoke-static {v1, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, LzH0;->B:I

    if-lez v0, :cond_0

    const-string v1, "Tab.BackgroundTabsOpenedViaContextMenuCount"

    .line 2
    invoke-static {v1, v0}, LfV;->b(Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, LzH0;->B:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LzH0;->C:LRG0;

    return-void
.end method

.method public final c(I)V
    .locals 14

    .line 1
    iget v0, p0, LzH0;->A:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget v2, p0, LzH0;->A:I

    iget-wide v3, p0, LzH0;->z:J

    sub-long v6, v0, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v13, 0x4

    if-ne v2, v4, :cond_1

    if-ne p1, v3, :cond_1

    const-wide/32 v10, 0x36ee80

    const/16 v12, 0x64

    const-wide/16 v8, 0x1

    const-string v5, "Tabs.StateTransfer.Time_Active_Inactive"

    .line 4
    invoke-static/range {v5 .. v12}, LfV;->a(Ljava/lang/String;JJJI)V

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    if-ne p1, v13, :cond_2

    const-wide/32 v10, 0x36ee80

    const/16 v12, 0x64

    const-wide/16 v8, 0x1

    const-string v5, "Tabs.StateTransfer.Time_Active_Closed"

    .line 5
    invoke-static/range {v5 .. v12}, LfV;->a(Ljava/lang/String;JJJI)V

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    const-string v2, "Tabs.StateTransfer.Target_Initial"

    .line 6
    invoke-static {v2, p1, v13}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_1

    :cond_3
    if-ne v2, v4, :cond_4

    const-string v2, "Tabs.StateTransfer.Target_Active"

    .line 7
    invoke-static {v2, p1, v13}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_1

    :cond_4
    if-ne v2, v3, :cond_5

    const-string v2, "Tabs.StateTransfer.Target_Inactive"

    .line 8
    invoke-static {v2, p1, v13}, LfV;->a(Ljava/lang/String;II)V

    .line 9
    :cond_5
    :goto_1
    iput-wide v0, p0, LzH0;->z:J

    .line 10
    iput p1, p0, LzH0;->A:I

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    .line 1
    iget-wide v0, p0, LzH0;->y:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 2
    iput-wide v2, p0, LzH0;->y:J

    :cond_0
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 6

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, LzH0;->c(I)V

    .line 2
    iget v0, p0, LzH0;->w:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 3
    :cond_0
    iget-wide v2, p0, LzH0;->x:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Tab.BackgroundTabShown"

    invoke-static {v0, v1}, LfV;->a(Ljava/lang/String;Z)V

    .line 4
    :cond_2
    invoke-virtual {p0}, LzH0;->b()V

    .line 5
    invoke-virtual {p0, p1}, LzH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p0}, LzH0;->b()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, LzH0;->c(I)V

    :goto_0
    return-void
.end method

.method public onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 11

    .line 1
    iget-wide v0, p0, LzH0;->y:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-wide v4, p0, LzH0;->x:J

    cmp-long p1, v4, v0

    if-ltz p1, :cond_0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object v4, p0

    move v10, p2

    .line 2
    invoke-virtual/range {v4 .. v10}, LzH0;->a(ZJJI)V

    .line 3
    :cond_0
    iput-wide v2, p0, LzH0;->y:J

    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-wide p1, p0, LzH0;->y:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, LzH0;->x:J

    cmp-long v4, v2, p1

    if-ltz v4, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 3
    iget-wide v2, p0, LzH0;->y:J

    sub-long v6, p1, v2

    .line 4
    iget-wide v2, p0, LzH0;->x:J

    sub-long v8, p1, v2

    const/4 v5, 0x1

    const/4 v10, -0x1

    move-object v4, p0

    .line 5
    invoke-virtual/range {v4 .. v10}, LzH0;->a(ZJJI)V

    .line 6
    :cond_0
    iput-wide v0, p0, LzH0;->y:J

    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LzH0;->b()V

    return-void
.end method

.method public onRestoreStarted(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, LzH0;->y:J

    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-static/range {p1 .. p1}, LoI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LpI0;

    move-result-object v3

    .line 2
    iget-boolean v4, v1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 3
    check-cast v3, LrI0;

    invoke-virtual {v3, v4}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v3

    .line 4
    iget-object v4, v1, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 5
    sget-object v5, LzH0;->E:Ljava/lang/Class;

    invoke-virtual {v4, v5}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v4

    check-cast v4, LzH0;

    .line 6
    iget-wide v4, v4, LzH0;->x:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    :goto_0
    invoke-interface {v3}, LdI0;->getCount()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 8
    invoke-interface {v3, v7}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v9

    if-eq v9, v1, :cond_0

    .line 9
    invoke-static {v9}, LzH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)LzH0;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 10
    iget-object v9, v9, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 11
    sget-object v10, LzH0;->E:Ljava/lang/Class;

    invoke-virtual {v9, v10}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v9

    check-cast v9, LzH0;

    .line 12
    iget-wide v9, v9, LzH0;->x:J

    cmp-long v11, v9, v4

    if-lez v11, :cond_0

    add-int/lit8 v8, v8, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-wide v3, v1, Lorg/chromium/chrome/browser/tab/Tab;->A:J

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 15
    iget-wide v11, v0, LzH0;->x:J

    const-wide/16 v13, -0x1

    const/4 v5, 0x3

    cmp-long v7, v11, v13

    if-eqz v7, :cond_2

    if-ne v2, v5, :cond_2

    sub-long v11, v9, v11

    long-to-int v7, v11

    const-string v11, "Tab.SwitchedToForegroundAge"

    .line 16
    invoke-static {v11, v7}, LfV;->c(Ljava/lang/String;I)V

    const-string v7, "Tab.SwitchedToForegroundMRURank"

    .line 17
    invoke-static {v7, v8}, LfV;->c(Ljava/lang/String;I)V

    .line 18
    :cond_2
    sget-wide v7, LzH0;->F:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    sput-wide v7, LzH0;->F:J

    const/4 v15, 0x1

    cmp-long v16, v7, v11

    if-nez v16, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 19
    :goto_1
    iget v8, v0, LzH0;->w:I

    if-ne v8, v5, :cond_4

    iget-wide v11, v0, LzH0;->x:J

    cmp-long v8, v11, v13

    if-nez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    .line 20
    :goto_2
    iget-wide v11, v0, LzH0;->y:J

    const/4 v6, 0x2

    cmp-long v17, v11, v13

    if-nez v17, :cond_5

    if-nez v8, :cond_5

    const/4 v8, 0x0

    goto :goto_3

    .line 21
    :cond_5
    iget-wide v11, v0, LzH0;->x:J

    cmp-long v8, v11, v13

    if-nez v8, :cond_8

    if-eqz v7, :cond_6

    const/4 v8, 0x6

    goto :goto_3

    .line 22
    :cond_6
    iget v8, v0, LzH0;->w:I

    if-ne v8, v6, :cond_7

    const/4 v8, 0x7

    goto :goto_3

    :cond_7
    if-ne v8, v5, :cond_8

    const/16 v8, 0x8

    goto :goto_3

    :cond_8
    const/4 v8, 0x1

    :goto_3
    if-ne v2, v5, :cond_9

    const-string v11, "Tab.StatusWhenSwitchedBackToForeground"

    const/16 v12, 0x9

    .line 23
    invoke-static {v11, v8, v12}, LfV;->a(Ljava/lang/String;II)V

    .line 24
    :cond_9
    iget-wide v11, v0, LzH0;->x:J

    const-wide/16 v17, 0x0

    cmp-long v8, v11, v13

    if-nez v8, :cond_d

    .line 25
    iget v8, v0, LzH0;->w:I

    const-string v11, "Tab.BackgroundLoadStatus"

    if-ne v8, v15, :cond_b

    .line 26
    iget-wide v5, v0, LzH0;->y:J

    cmp-long v8, v5, v13

    if-nez v8, :cond_a

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 27
    invoke-static {v11, v6, v5}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_4

    :cond_a
    const/4 v5, 0x3

    .line 28
    invoke-static {v11, v15, v5}, LfV;->a(Ljava/lang/String;II)V

    cmp-long v6, v3, v17

    if-lez v6, :cond_c

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    const-string v6, "Tab.LostTabAgeWhenSwitchedToForeground"

    .line 30
    invoke-static {v6, v11, v12}, LfV;->b(Ljava/lang/String;J)V

    goto :goto_4

    :cond_b
    if-ne v8, v5, :cond_c

    .line 31
    invoke-static {v11, v6, v5}, LfV;->a(Ljava/lang/String;II)V

    .line 32
    :cond_c
    :goto_4
    new-instance v5, LyH0;

    invoke-direct {v5, v0, v1}, LyH0;-><init>(LzH0;Lorg/chromium/chrome/browser/tab/Tab;)V

    iput-object v5, v0, LzH0;->D:LxI0;

    .line 33
    invoke-static/range {p1 .. p1}, LoI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LpI0;

    move-result-object v1

    iget-object v5, v0, LzH0;->D:LxI0;

    check-cast v1, LrI0;

    invoke-virtual {v1, v5}, LrI0;->a(LxI0;)V

    .line 34
    :cond_d
    iget-wide v5, v0, LzH0;->x:J

    cmp-long v1, v5, v13

    if-nez v1, :cond_f

    cmp-long v1, v3, v17

    if-lez v1, :cond_f

    const-wide/32 v5, 0xea60

    if-eqz v7, :cond_e

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    div-long/2addr v1, v5

    long-to-int v2, v1

    const-string v1, "Tabs.ForegroundTabAgeAtStartup"

    .line 36
    invoke-static {v1, v2}, LfV;->c(Ljava/lang/String;I)V

    goto :goto_5

    :cond_e
    const/4 v1, 0x3

    if-ne v2, v1, :cond_f

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    div-long/2addr v1, v5

    long-to-int v2, v1

    const-string v1, "Tab.AgeUponRestoreFromColdStart"

    .line 38
    invoke-static {v1, v2}, LfV;->c(Ljava/lang/String;I)V

    .line 39
    :cond_f
    :goto_5
    iput-wide v9, v0, LzH0;->x:J

    .line 40
    invoke-virtual {v0, v15}, LzH0;->c(I)V

    return-void
.end method
