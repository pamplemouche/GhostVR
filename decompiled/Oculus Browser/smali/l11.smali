.class public Ll11;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:Lo11;


# direct methods
.method public constructor <init>(Lo11;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll11;->a:Lo11;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Ll11;->a:Lo11;

    if-eqz v2, :cond_b

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "BatteryStatusManager"

    const-string v3, "Unexpected intent."

    .line 3
    invoke-static {v2, v3, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 4
    :cond_0
    iget-boolean v3, v2, Lo11;->d:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "present"

    .line 5
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    :goto_0
    const/4 v6, -0x1

    const-string v7, "plugged"

    .line 6
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eqz v3, :cond_a

    if-ne v7, v6, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v3, "level"

    .line 7
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v8, "scale"

    .line 8
    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    int-to-double v9, v3

    int-to-double v11, v8

    div-double/2addr v9, v11

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v9, v11

    if-ltz v3, :cond_3

    cmpl-double v3, v9, v13

    if-lez v3, :cond_4

    :cond_3
    move-wide v9, v13

    :cond_4
    if-eqz v7, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    const-string v7, "status"

    .line 9
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    move-wide v13, v11

    goto :goto_3

    :cond_7
    move-wide v13, v6

    .line 10
    :goto_3
    new-instance v1, Lk21;

    .line 11
    invoke-direct {v1, v4}, Lk21;-><init>(I)V

    .line 12
    iput-boolean v3, v1, Lk21;->b:Z

    .line 13
    iput-wide v13, v1, Lk21;->c:D

    .line 14
    iput-wide v6, v1, Lk21;->d:D

    .line 15
    iput-wide v9, v1, Lk21;->e:D

    .line 16
    iget-object v3, v2, Lo11;->e:Lm11;

    if-eqz v3, :cond_9

    const/4 v4, 0x4

    .line 17
    invoke-virtual {v3, v4}, Lm11;->a(I)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v8

    .line 18
    iget-object v8, v2, Lo11;->e:Lm11;

    invoke-virtual {v8, v5}, Lm11;->a(I)I

    move-result v5

    int-to-double v8, v5

    .line 19
    iget-object v5, v2, Lo11;->e:Lm11;

    const/4 v10, 0x3

    invoke-virtual {v5, v10}, Lm11;->a(I)I

    move-result v5

    int-to-double v13, v5

    .line 20
    iget-boolean v5, v1, Lk21;->b:Z

    const-wide v15, 0x40ac200000000000L    # 3600.0

    if-eqz v5, :cond_8

    .line 21
    iget-wide v11, v1, Lk21;->c:D

    cmpl-double v5, v11, v6

    if-nez v5, :cond_9

    const-wide/16 v5, 0x0

    cmpl-double v7, v13, v5

    if-lez v7, :cond_9

    div-double/2addr v8, v13

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v13, v5, v3

    mul-double v13, v13, v8

    mul-double v13, v13, v15

    .line 22
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    iput-wide v3, v1, Lk21;->c:D

    goto :goto_4

    :cond_8
    move-wide v5, v11

    cmpg-double v7, v13, v5

    if-gez v7, :cond_9

    neg-double v5, v13

    div-double/2addr v8, v5

    mul-double v8, v8, v3

    mul-double v8, v8, v15

    .line 23
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    iput-wide v3, v1, Lk21;->d:D

    .line 24
    :cond_9
    :goto_4
    iget-object v2, v2, Lo11;->a:Ln11;

    check-cast v2, Li11;

    invoke-virtual {v2, v1}, Li11;->a(Lk21;)V

    goto :goto_6

    .line 25
    :cond_a
    :goto_5
    iget-object v1, v2, Lo11;->a:Ln11;

    new-instance v2, Lk21;

    .line 26
    invoke-direct {v2, v4}, Lk21;-><init>(I)V

    .line 27
    check-cast v1, Li11;

    invoke-virtual {v1, v2}, Li11;->a(Lk21;)V

    :goto_6
    return-void

    :cond_b
    const/4 v1, 0x0

    .line 28
    throw v1
.end method
