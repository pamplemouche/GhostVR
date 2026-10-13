.class public LX40;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lj50;

.field public final b:LY40;

.field public c:I

.field public d:I

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Lj50;LY40;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LX40;->d:I

    .line 3
    iput v0, p0, LX40;->f:I

    .line 4
    iput-object p1, p0, LX40;->a:Lj50;

    .line 5
    iput-object p2, p0, LX40;->b:LY40;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 3
    iget v0, p0, LX40;->d:I

    iput v0, p0, LX40;->f:I

    .line 4
    iput p1, p0, LX40;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0xe

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    .line 5
    iput p1, p0, LX40;->c:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 6
    iput p1, p0, LX40;->c:I

    goto :goto_0

    .line 7
    :cond_1
    iput v0, p0, LX40;->c:I

    goto :goto_0

    .line 8
    :cond_2
    iput v1, p0, LX40;->c:I

    .line 9
    :goto_0
    iget p1, p0, LX40;->d:I

    .line 10
    iput-boolean v0, p0, LX40;->e:Z

    .line 11
    invoke-virtual {p0, p1}, LX40;->c(I)V

    return-void
.end method

.method public final a(ILjava/lang/Integer;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 12
    iget v2, v0, LX40;->d:I

    if-ne v1, v2, :cond_0

    return-void

    .line 13
    :cond_0
    iput v2, v0, LX40;->f:I

    .line 14
    iput v1, v0, LX40;->d:I

    const/4 v2, 0x0

    .line 15
    iput-boolean v2, v0, LX40;->e:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_31

    const/4 v5, 0x3

    if-eq v1, v5, :cond_30

    const-wide/16 v6, 0x64

    const/4 v8, 0x5

    if-eq v1, v8, :cond_2f

    const-string v9, "ContextualSearch"

    const/4 v10, -0x1

    packed-switch v1, :pswitch_data_0

    const-string v3, "Warning: unexpected startWorkingOn "

    .line 16
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 17
    :pswitch_0
    iget-object v1, v0, LX40;->b:LY40;

    check-cast v1, Le50;

    .line 18
    iget-object v2, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 19
    iget-object v4, v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 20
    iput-boolean v3, v4, LX40;->e:Z

    .line 21
    iget-object v3, v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    .line 22
    iget-object v4, v3, Lo50;->e:Ljava/lang/String;

    .line 23
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->g:Lh50;

    .line 24
    iget-boolean v3, v3, Lo50;->r:Z

    .line 25
    invoke-interface {v2, v4, v3}, Lh50;->a(Ljava/lang/String;Z)V

    .line 26
    iget-object v1, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 27
    iget-object v1, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    goto/16 :goto_18

    .line 28
    :pswitch_1
    iget-object v1, v0, LX40;->b:LY40;

    check-cast v1, Le50;

    .line 29
    iget-object v1, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 30
    iget-object v2, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    .line 31
    iget v2, v2, Lo50;->f:I

    if-nez v2, :cond_1

    .line 32
    iget-object v1, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 33
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, LX40;->a(Ljava/lang/Integer;)V

    goto/16 :goto_18

    .line 34
    :cond_1
    iget-object v2, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 35
    iput-boolean v3, v2, LX40;->e:Z

    .line 36
    iget-object v1, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v1

    invoke-interface {v1}, LpI0;->d()V

    .line 37
    throw v4

    .line 38
    :pswitch_2
    iget-object v1, v0, LX40;->b:LY40;

    check-cast v1, Le50;

    .line 39
    iget-object v4, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-static {v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->b(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 40
    iget-object v2, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 41
    iget-object v5, v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 42
    iput-boolean v3, v5, LX40;->e:Z

    .line 43
    iget v5, v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->p:I

    add-int/2addr v5, v3

    iput v5, v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->p:I

    .line 44
    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->o()V

    .line 45
    iget-object v1, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 46
    iget-object v1, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->h:Lj50;

    .line 47
    invoke-virtual {v1}, Lj50;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    iget-object v2, v1, Lj50;->a:Lcy0;

    .line 49
    sget-object v4, LA50;->c:LA50;

    if-nez v4, :cond_2

    .line 50
    new-instance v4, LA50;

    invoke-direct {v4, v2}, LA50;-><init>(Lcy0;)V

    sput-object v4, LA50;->c:LA50;

    .line 51
    :cond_2
    sget-object v2, LA50;->c:LA50;

    .line 52
    invoke-virtual {v2}, LA50;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 53
    invoke-virtual {v2}, LA50;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v2, LA50;->b:I

    goto :goto_0

    .line 54
    :cond_3
    iget v4, v2, LA50;->b:I

    rsub-int/lit8 v4, v4, -0x1

    :goto_0
    add-int/2addr v4, v3

    .line 55
    iput v4, v2, LA50;->b:I

    .line 56
    iget-object v2, v2, LA50;->a:Lcy0;

    .line 57
    iget-object v2, v2, Lcy0;->a:Landroid/content/SharedPreferences;

    const-string v3, "contextual_search_tap_triggered_promo_count"

    invoke-static {v2, v3, v4}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 58
    :cond_4
    iget-object v2, v1, Lj50;->a:Lcy0;

    const-string v3, "contextual_search_tap_count"

    invoke-virtual {v2, v3}, Lcy0;->b(Ljava/lang/String;)I

    move-result v2

    .line 59
    invoke-virtual {v1}, Lj50;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 60
    invoke-static {v2}, Lz50;->c(I)V

    goto :goto_1

    .line 61
    :cond_5
    invoke-static {v2}, Lz50;->b(I)V

    .line 62
    :goto_1
    iget-object v1, v1, Lj50;->a:Lcy0;

    const-string v2, "contextual_search_all_time_tap_count"

    invoke-virtual {v1, v2}, Lcy0;->b(Ljava/lang/String;)I

    goto/16 :goto_18

    .line 63
    :cond_6
    iget-object v1, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 64
    iget-object v1, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, LX40;->a(Ljava/lang/Integer;)V

    goto/16 :goto_18

    .line 66
    :pswitch_3
    iget-object v1, v0, LX40;->b:LY40;

    check-cast v1, Le50;

    .line 67
    iget-object v1, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 68
    iget-object v4, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 69
    iput-boolean v3, v4, LX40;->e:Z

    .line 70
    iget-object v4, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    .line 71
    iget-object v5, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    .line 72
    iget-object v1, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->d:LW40;

    .line 73
    iget v6, v4, Lo50;->j:F

    float-to-int v6, v6

    .line 74
    iget v7, v4, Lo50;->k:F

    float-to-int v7, v7

    .line 75
    iget v8, v4, Lo50;->q:I

    if-ne v8, v10, :cond_7

    iput v2, v4, Lo50;->q:I

    .line 76
    :cond_7
    new-instance v8, LQ50;

    iget-object v13, v4, Lo50;->h:Ls50;

    iget v10, v4, Lo50;->q:I

    iget-boolean v15, v4, Lo50;->p:Z

    iget v14, v4, Lo50;->l:I

    iget v12, v4, Lo50;->m:I

    move-object v11, v8

    move/from16 v20, v12

    move-object v12, v4

    move/from16 v19, v14

    move v14, v6

    move/from16 v18, v15

    move v15, v7

    move-object/from16 v16, v5

    move/from16 v17, v10

    invoke-direct/range {v11 .. v20}, LQ50;-><init>(Lo50;Ls50;IILorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;IZII)V

    .line 77
    iget-object v5, v8, LR40;->a:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LQ40;

    .line 78
    invoke-virtual {v10}, LQ40;->b()V

    goto :goto_2

    .line 79
    :cond_8
    iget-object v5, v4, Lo50;->b:Lp50;

    invoke-interface {v5, v8}, Lp50;->a(LR40;)V

    .line 80
    iget-object v5, v8, LR40;->a:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LQ40;

    .line 81
    invoke-virtual {v10}, LQ40;->a()Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v5, 0x1

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    .line 82
    :goto_3
    iget-object v10, v8, LR40;->a:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LQ40;

    .line 83
    invoke-virtual {v11}, LQ40;->c()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v10, 0x1

    goto :goto_4

    :cond_c
    const/4 v10, 0x0

    :goto_4
    if-nez v5, :cond_13

    .line 84
    iget-object v8, v8, LR40;->a:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LQ40;

    .line 85
    invoke-virtual {v11, v1}, LQ40;->a(LW40;)V

    goto :goto_5

    .line 86
    :cond_d
    iget-object v8, v4, Lo50;->b:Lp50;

    invoke-interface {v8, v1}, Lp50;->a(LW40;)V

    .line 87
    check-cast v1, Lk50;

    .line 88
    iput-boolean v3, v1, Lk50;->d:Z

    .line 89
    invoke-virtual {v1}, Lk50;->a()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, v1, Lk50;->c:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v8, :cond_12

    iget-object v8, v1, Lk50;->f:Ljava/util/Map;

    if-eqz v8, :cond_12

    .line 90
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    .line 91
    iget-object v8, v1, Lk50;->f:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 93
    instance-of v13, v11, Ljava/lang/Boolean;

    if-eqz v13, :cond_f

    .line 94
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v1, v12, v11}, Lk50;->a(II)V

    goto :goto_6

    .line 95
    :cond_f
    instance-of v13, v11, Ljava/lang/Integer;

    if-eqz v13, :cond_10

    .line 96
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v12, v11}, Lk50;->a(II)V

    goto :goto_6

    .line 97
    :cond_10
    instance-of v13, v11, Ljava/lang/Character;

    if-eqz v13, :cond_e

    .line 98
    check-cast v11, Ljava/lang/Character;

    invoke-virtual {v11}, Ljava/lang/Character;->charValue()C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v11

    invoke-virtual {v1, v12, v11}, Lk50;->a(II)V

    goto :goto_6

    .line 99
    :cond_11
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v1, Lk50;->f:Ljava/util/Map;

    .line 100
    iget-wide v11, v1, Lk50;->a:J

    .line 101
    invoke-static {v11, v12, v1}, LJ/N;->MCvhnrxJ(JLjava/lang/Object;)I

    move-result v8

    .line 102
    iput v8, v1, Lk50;->e:I

    .line 103
    invoke-static {}, Lz50;->a()V

    .line 104
    :cond_12
    iget v1, v1, Lk50;->e:I

    .line 105
    invoke-static {v1}, Lz50;->a(I)V

    goto :goto_7

    :cond_13
    const/4 v1, 0x0

    :goto_7
    const/4 v8, 0x2

    if-ne v1, v8, :cond_14

    const/16 v1, 0x12

    .line 106
    invoke-static {v1}, LP40;->a(I)Z

    move-result v1

    if-eqz v1, :cond_14

    if-nez v10, :cond_14

    const/4 v1, 0x1

    const/4 v15, 0x1

    goto :goto_8

    :cond_14
    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_8
    if-nez v5, :cond_16

    if-eqz v15, :cond_15

    goto :goto_9

    .line 107
    :cond_15
    iget-object v1, v4, Lo50;->b:Lp50;

    iget-wide v2, v4, Lo50;->o:J

    invoke-interface {v1, v2, v3}, Lp50;->a(J)V

    goto :goto_a

    :cond_16
    :goto_9
    new-array v1, v8, [Ljava/lang/Object;

    .line 108
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Tap suppressed due to Ranker: %s, heuristics: %s"

    .line 109
    invoke-static {v9, v2, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v1, v4, Lo50;->b:Lp50;

    invoke-interface {v1}, Lp50;->e()V

    .line 111
    :goto_a
    iget-wide v13, v4, Lo50;->o:J

    const-wide/16 v1, 0x0

    cmp-long v3, v13, v1

    if-eqz v3, :cond_17

    .line 112
    new-instance v1, Ls50;

    int-to-float v11, v6

    int-to-float v12, v7

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Ls50;-><init>(FFJZ)V

    iput-object v1, v4, Lo50;->h:Ls50;

    goto/16 :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 113
    iput-object v1, v4, Lo50;->h:Ls50;

    goto/16 :goto_18

    .line 114
    :pswitch_4
    iget-object v1, v0, LX40;->b:LY40;

    check-cast v1, Le50;

    .line 115
    iget-object v4, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 116
    iget-object v4, v4, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    if-eqz v4, :cond_18

    .line 117
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a()V

    .line 118
    :cond_18
    iget-object v4, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    new-instance v6, Lb50;

    invoke-direct {v6, v1}, Lb50;-><init>(Le50;)V

    .line 119
    iput-object v6, v4, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    .line 120
    iget-object v4, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 121
    iget-object v4, v4, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    .line 122
    iget v4, v4, Lo50;->f:I

    if-eq v4, v3, :cond_1a

    if-ne v4, v5, :cond_19

    goto :goto_b

    :cond_19
    const/4 v4, 0x0

    goto :goto_c

    :cond_1a
    :goto_b
    const/4 v4, 0x1

    :goto_c
    if-eqz v4, :cond_21

    .line 123
    iget-object v4, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 124
    iget-object v4, v4, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->h:Lj50;

    .line 125
    invoke-virtual {v4}, Lj50;->d()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 126
    iget-object v4, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 127
    iget-object v4, v4, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->d:LW40;

    .line 128
    check-cast v4, Lk50;

    .line 129
    iget-object v4, v4, Lk50;->g:LT40;

    .line 130
    check-cast v4, LV40;

    if-eqz v4, :cond_20

    .line 131
    sget-object v4, Lay0;->a:Lcy0;

    const-string v5, "contextual_search_previous_interaction_event_id"

    const-wide/16 v6, 0x0

    .line 132
    invoke-virtual {v4, v5, v6, v7}, Lcy0;->a(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v4, v9, v6

    if-nez v4, :cond_1b

    .line 133
    new-instance v4, LU40;

    invoke-direct {v4}, LU40;-><init>()V

    goto :goto_d

    .line 134
    :cond_1b
    sget-object v4, Lay0;->a:Lcy0;

    const-string v8, "contextual_search_previous_interaction_encoded_outcomes"

    .line 135
    invoke-virtual {v4, v8, v2}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v11

    .line 136
    sget-object v4, Lay0;->a:Lcy0;

    const-string v12, "contextual_search_previous_interaction_timestamp"

    .line 137
    invoke-virtual {v4, v12, v6, v7}, Lcy0;->a(Ljava/lang/String;J)J

    move-result-wide v13

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    invoke-static/range {v15 .. v16}, Lz50;->a(J)V

    .line 139
    sget-object v4, Lay0;->a:Lcy0;

    .line 140
    iget-object v4, v4, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 141
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    sget-object v4, Lay0;->a:Lcy0;

    .line 144
    iget-object v4, v4, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-static {v4, v8, v2}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 145
    sget-object v4, Lay0;->a:Lcy0;

    .line 146
    iget-object v4, v4, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 147
    invoke-interface {v4, v12, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    new-instance v4, LU40;

    move-object v8, v4

    move-wide v12, v13

    invoke-direct/range {v8 .. v13}, LU40;-><init>(JIJ)V

    .line 150
    :goto_d
    iget-object v5, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 151
    iget-object v6, v5, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    .line 152
    iget-object v7, v5, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->h:Lj50;

    .line 153
    iget-object v5, v5, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v7, :cond_1f

    const/16 v7, 0xf

    .line 154
    invoke-static {v7}, LP40;->a(I)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_1c

    goto :goto_e

    :cond_1c
    const-string v7, "phone"

    .line 155
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_1d

    :goto_e
    move-object v7, v8

    goto :goto_f

    .line 156
    :cond_1d
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    move-object v5, v8

    :cond_1e
    move-object v7, v5

    .line 158
    :goto_f
    iget-object v5, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 159
    iget-object v5, v5, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->h:Lj50;

    .line 160
    invoke-virtual {v5}, Lj50;->c()Z

    move-result v5

    xor-int/lit8 v8, v5, 0x1

    .line 161
    iget-wide v9, v4, LU40;->a:J

    .line 162
    iget v11, v4, LU40;->b:I

    .line 163
    invoke-virtual/range {v6 .. v11}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a(Ljava/lang/String;ZJI)V

    goto :goto_10

    :cond_1f
    const/4 v1, 0x0

    .line 164
    throw v1

    :cond_20
    const/4 v1, 0x0

    .line 165
    throw v1

    .line 166
    :cond_21
    :goto_10
    iget-object v4, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 167
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->l()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 168
    iget-object v1, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 169
    iget-object v2, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 170
    iput-boolean v3, v2, LX40;->e:Z

    .line 171
    iget-wide v2, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->k:J

    .line 172
    iget-object v5, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    .line 173
    invoke-static {v2, v3, v1, v5, v4}, LJ/N;->M5yIaSSo(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 174
    :cond_22
    iget-object v1, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 175
    iget-object v1, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, LX40;->a(Ljava/lang/Integer;)V

    goto/16 :goto_18

    .line 177
    :pswitch_5
    iget-object v1, v0, LX40;->b:LY40;

    check-cast v1, Le50;

    .line 178
    iget-object v4, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 179
    iget-object v6, v4, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 180
    iput-boolean v3, v6, LX40;->e:Z

    .line 181
    iget-object v4, v4, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->h:Lj50;

    if-eqz v4, :cond_2e

    const-string v6, "ContextualSearchLongpressResolve"

    .line 182
    invoke-static {v6}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    const-string v7, "longpress_resolve_variation"

    .line 183
    invoke-static {v6, v7}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    .line 184
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    const/4 v6, 0x1

    goto :goto_11

    :cond_23
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_24

    goto :goto_14

    .line 185
    :cond_24
    invoke-virtual {v4}, Lj50;->c()Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v6, 0x14

    .line 186
    invoke-static {v6}, LP40;->a(I)Z

    move-result v6

    if-eqz v6, :cond_25

    goto :goto_15

    .line 187
    :cond_25
    invoke-virtual {v4}, Lj50;->c()Z

    move-result v6

    if-nez v6, :cond_26

    goto :goto_13

    .line 188
    :cond_26
    iget-object v4, v4, Lj50;->a:Lcy0;

    .line 189
    sget-object v6, LA50;->c:LA50;

    if-nez v6, :cond_27

    .line 190
    new-instance v6, LA50;

    invoke-direct {v6, v4}, LA50;-><init>(Lcy0;)V

    sput-object v6, LA50;->c:LA50;

    .line 191
    :cond_27
    sget-object v4, LA50;->c:LA50;

    .line 192
    invoke-virtual {v4}, LA50;->a()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 193
    invoke-virtual {v4}, LA50;->a()Z

    move-result v6

    if-eqz v6, :cond_28

    iget v4, v4, LA50;->b:I

    goto :goto_12

    .line 194
    :cond_28
    iget v4, v4, LA50;->b:I

    rsub-int/lit8 v4, v4, -0x1

    :goto_12
    rsub-int/lit8 v4, v4, 0x32

    .line 195
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_29
    :goto_13
    if-eqz v10, :cond_2a

    goto :goto_15

    :cond_2a
    :goto_14
    const/4 v4, 0x0

    goto :goto_16

    :cond_2b
    :goto_15
    const/4 v4, 0x1

    :goto_16
    if-eqz v4, :cond_2d

    .line 196
    iget-object v4, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 197
    iget-object v6, v4, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    .line 198
    iget v6, v6, Lo50;->f:I

    if-ne v6, v5, :cond_2c

    goto :goto_17

    .line 199
    :cond_2c
    iget-object v1, v4, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->d:LW40;

    .line 200
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->l()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    .line 201
    check-cast v1, Lk50;

    .line 202
    iput-boolean v3, v1, Lk50;->b:Z

    .line 203
    iput-object v4, v1, Lk50;->c:Lorg/chromium/content_public/browser/WebContents;

    .line 204
    iput-boolean v2, v1, Lk50;->d:Z

    .line 205
    iget-wide v2, v1, Lk50;->a:J

    .line 206
    invoke-static {v2, v3, v1, v4}, LJ/N;->MvT1I8Nb(JLjava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 207
    throw v1

    .line 208
    :cond_2d
    :goto_17
    iget-object v1, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    goto :goto_18

    :cond_2e
    const/4 v1, 0x0

    .line 209
    throw v1

    .line 210
    :pswitch_6
    iget-object v1, v0, LX40;->b:LY40;

    check-cast v1, Le50;

    .line 211
    iget-object v2, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 212
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 213
    iput-boolean v3, v2, LX40;->e:Z

    .line 214
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Ld50;

    invoke-direct {v3, v1}, Ld50;-><init>(Le50;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18

    .line 215
    :cond_2f
    iget-object v1, v0, LX40;->b:LY40;

    check-cast v1, Le50;

    .line 216
    iget-object v2, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 217
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 218
    iput-boolean v3, v2, LX40;->e:Z

    .line 219
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lc50;

    invoke-direct {v3, v1}, Lc50;-><init>(Le50;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18

    .line 220
    :cond_30
    iget-object v1, v0, LX40;->b:LY40;

    check-cast v1, Le50;

    .line 221
    iget-object v1, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 222
    iget-object v2, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 223
    iput-boolean v3, v2, LX40;->e:Z

    .line 224
    iget-object v1, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v1

    invoke-interface {v1}, LpI0;->d()V

    const/4 v1, 0x0

    .line 225
    throw v1

    .line 226
    :cond_31
    iget-object v1, v0, LX40;->b:LY40;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    check-cast v1, Le50;

    .line 227
    iget-object v2, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 228
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    if-eqz v2, :cond_32

    .line 229
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a()V

    .line 230
    :cond_32
    iget-object v1, v1, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 231
    iput-object v4, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    :goto_18
    :pswitch_7
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, LX40;->c:I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, LX40;->a(ILjava/lang/Integer;)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 1
    iget v0, p0, LX40;->d:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(I)V
    .locals 9

    .line 1
    iget v0, p0, LX40;->d:I

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    const-string v2, "ContextualSearch"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0xe

    const/16 v4, 0xc

    const/16 v5, 0x8

    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x7

    packed-switch p1, :pswitch_data_0

    const-string v0, "The state "

    .line 2
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not transitional!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3
    :pswitch_0
    invoke-virtual {p0, v6, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto/16 :goto_2

    .line 4
    :pswitch_1
    iget p1, p0, LX40;->c:I

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xf

    .line 5
    :goto_0
    invoke-virtual {p0, v0, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto/16 :goto_2

    .line 6
    :pswitch_2
    iget-object p1, p0, LX40;->a:Lj50;

    invoke-virtual {p1}, Lj50;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v0, 0xd

    .line 7
    :cond_3
    invoke-virtual {p0, v0, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto/16 :goto_2

    .line 8
    :pswitch_3
    invoke-virtual {p0, v4, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto/16 :goto_2

    :pswitch_4
    const/16 p1, 0xb

    .line 9
    invoke-virtual {p0, p1, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto/16 :goto_2

    .line 10
    :pswitch_5
    iget p1, p0, LX40;->c:I

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p1, v0, :cond_4

    .line 11
    invoke-virtual {p0, v1, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto :goto_2

    :cond_4
    if-ne p1, v1, :cond_5

    .line 12
    invoke-virtual {p0, v4, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto :goto_2

    :cond_5
    const/16 p1, 0xa

    .line 13
    invoke-virtual {p0, p1, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto :goto_2

    .line 14
    :pswitch_6
    invoke-virtual {p0, v6, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto :goto_2

    .line 15
    :pswitch_7
    invoke-virtual {p0, v5, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto :goto_2

    .line 16
    :pswitch_8
    iget p1, p0, LX40;->f:I

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_6

    const/4 v5, 0x7

    .line 17
    :cond_6
    invoke-virtual {p0, v5, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto :goto_2

    .line 18
    :pswitch_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, LX40;->a(Ljava/lang/Integer;)V

    goto :goto_2

    .line 19
    :pswitch_a
    iget p1, p0, LX40;->f:I

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_7

    const/4 p1, 0x5

    .line 20
    invoke-virtual {p0, p1, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto :goto_2

    .line 21
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, LX40;->a(Ljava/lang/Integer;)V

    goto :goto_2

    .line 22
    :pswitch_b
    invoke-virtual {p0, v6, v7}, LX40;->a(ILjava/lang/Integer;)V

    goto :goto_2

    :cond_8
    :goto_1
    const-string v0, "Warning, the "

    .line 23
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state was aborted."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    :pswitch_c
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method
