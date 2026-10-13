.class public final Lnb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LWb;
.implements LIb;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:LMb;

.field public final h:Llb;

.field public final i:Lgb;

.field public final j:LXb;

.field public final k:Z

.field public l:LJb;

.field public m:Lqb;

.field public n:Lqb;

.field public o:Lqb;

.field public p:LXa;

.field public final q:Ljava/util/Map;

.field public r:LTa;

.field public s:Lkb;

.field public t:LS5;

.field public u:LS5;

.field public v:LO5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnb;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnb;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnb;->d:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnb;->e:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnb;->f:Ljava/util/ArrayList;

    .line 7
    new-instance v0, LMb;

    invoke-direct {v0}, LMb;-><init>()V

    iput-object v0, p0, Lnb;->g:LMb;

    .line 8
    new-instance v0, Llb;

    invoke-direct {v0, p0}, Llb;-><init>(Lnb;)V

    iput-object v0, p0, Lnb;->h:Llb;

    .line 9
    new-instance v0, Lgb;

    invoke-direct {v0, p0}, Lgb;-><init>(Lnb;)V

    iput-object v0, p0, Lnb;->i:Lgb;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnb;->q:Ljava/util/Map;

    .line 11
    new-instance v0, Lfb;

    invoke-direct {v0, p0}, Lfb;-><init>(Lnb;)V

    iput-object v0, p0, Lnb;->v:LO5;

    .line 12
    iput-object p1, p0, Lnb;->a:Landroid/content/Context;

    .line 13
    invoke-static {p1}, LG4;->a(Landroid/content/Context;)LG4;

    const-string v0, "activity"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 15
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 16
    iput-boolean v0, p0, Lnb;->k:Z

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 18
    new-instance v0, LPb;

    invoke-direct {v0, p1, p0}, LPb;-><init>(Landroid/content/Context;LWb;)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, LVb;

    invoke-direct {v0, p1, p0}, LVb;-><init>(Landroid/content/Context;LWb;)V

    .line 20
    :goto_0
    iput-object v0, p0, Lnb;->j:LXb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 3

    .line 133
    iget-object v0, p0, Lnb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 134
    iget-object v2, p0, Lnb;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb;

    .line 135
    iget-object v2, v2, Lmb;->a:LOb;

    .line 136
    iget-object v2, v2, LOb;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(Ljava/lang/String;)I
    .locals 3

    .line 80
    iget-object v0, p0, Lnb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 81
    iget-object v2, p0, Lnb;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqb;

    iget-object v2, v2, Lqb;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(Lqb;LSa;)I
    .locals 2

    .line 76
    invoke-virtual {p1, p2}, Lqb;->a(LSa;)I

    move-result p2

    if-eqz p2, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lnb;->i:Lgb;

    const/16 v1, 0x103

    invoke-virtual {v0, v1, p1}, Lgb;->a(ILjava/lang/Object;)V

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lnb;->i:Lgb;

    const/16 v1, 0x104

    invoke-virtual {v0, v1, p1}, Lgb;->a(ILjava/lang/Object;)V

    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lnb;->i:Lgb;

    const/16 v1, 0x105

    invoke-virtual {v0, v1, p1}, Lgb;->a(ILjava/lang/Object;)V

    :cond_2
    return p2
.end method

.method public a()Lqb;
    .locals 3

    .line 125
    iget-object v0, p0, Lnb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqb;

    .line 126
    iget-object v2, p0, Lnb;->m:Lqb;

    if-eq v1, v2, :cond_0

    .line 127
    invoke-virtual {p0, v1}, Lnb;->a(Lqb;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v1}, Lqb;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 129
    :cond_1
    iget-object v0, p0, Lnb;->m:Lqb;

    return-object v0
.end method

.method public a(LYa;)V
    .locals 3

    .line 66
    invoke-virtual {p0, p1}, Lnb;->b(LYa;)I

    move-result v0

    if-gez v0, :cond_0

    .line 67
    new-instance v0, Lob;

    invoke-direct {v0, p1}, Lob;-><init>(LYa;)V

    .line 68
    iget-object v1, p0, Lnb;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lnb;->i:Lgb;

    const/16 v2, 0x201

    invoke-virtual {v1, v2, v0}, Lgb;->a(ILjava/lang/Object;)V

    .line 70
    iget-object v1, p1, LYa;->g:LZa;

    .line 71
    invoke-virtual {p0, v0, v1}, Lnb;->a(Lob;LZa;)V

    .line 72
    iget-object v0, p0, Lnb;->h:Llb;

    .line 73
    invoke-static {}, Lrb;->e()V

    .line 74
    iput-object v0, p1, LYa;->d:LUa;

    .line 75
    iget-object v0, p0, Lnb;->r:LTa;

    invoke-virtual {p1, v0}, LYa;->b(LTa;)V

    :cond_0
    return-void
.end method

.method public final a(Lob;LZa;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lob;->d:LZa;

    if-eq v3, v2, :cond_0

    .line 2
    iput-object v2, v1, Lob;->d:LZa;

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_14

    if-eqz v2, :cond_10

    .line 3
    invoke-virtual/range {p2 .. p2}, LZa;->b()Z

    move-result v3

    const-string v4, "MediaRouter"

    if-eqz v3, :cond_f

    .line 4
    invoke-virtual/range {p2 .. p2}, LZa;->a()V

    .line 5
    iget-object v2, v2, LZa;->b:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v7, v3, :cond_c

    .line 9
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LSa;

    .line 10
    invoke-virtual {v10}, LSa;->h()Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-virtual {v1, v11}, Lob;->a(Ljava/lang/String;)I

    move-result v12

    .line 12
    invoke-virtual {v10}, LSa;->f()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    if-gez v12, :cond_6

    .line 13
    iget-object v12, v1, Lob;->c:LWa;

    .line 14
    iget-object v12, v12, LWa;->a:Landroid/content/ComponentName;

    .line 15
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v14

    const-string v12, ":"

    .line 16
    invoke-static {v14, v12, v11}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 17
    invoke-virtual {v0, v15}, Lnb;->a(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_2

    .line 18
    iget-object v12, v0, Lnb;->d:Ljava/util/Map;

    move-object/from16 p2, v2

    new-instance v2, LY6;

    invoke-direct {v2, v14, v11}, LY6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v12, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v16, v3

    move/from16 v17, v8

    goto :goto_4

    :cond_2
    move-object/from16 p2, v2

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Either "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " isn\'t unique in "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " or we\'re trying to assign a unique ID for an already added route"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v12, 0x2

    move/from16 v16, v3

    .line 20
    :goto_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v15, v2, v17

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v2, v18

    move/from16 v17, v8

    const-string v8, "%s_%d"

    invoke-static {v3, v8, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lnb;->a(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5

    .line 22
    iget-object v3, v0, Lnb;->d:Ljava/util/Map;

    new-instance v8, LY6;

    invoke-direct {v8, v14, v11}, LY6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v2

    :goto_4
    if-eqz v13, :cond_3

    .line 23
    new-instance v2, Lpb;

    invoke-direct {v2, v1, v11, v15}, Lpb;-><init>(Lob;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    new-instance v2, Lqb;

    invoke-direct {v2, v1, v11, v15}, Lqb;-><init>(Lob;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :goto_5
    iget-object v3, v1, Lob;->b:Ljava/util/List;

    add-int/lit8 v8, v9, 0x1

    invoke-interface {v3, v9, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25
    iget-object v3, v0, Lnb;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_4

    .line 26
    new-instance v3, LY6;

    invoke-direct {v3, v2, v10}, LY6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 27
    :cond_4
    invoke-virtual {v2, v10}, Lqb;->a(LSa;)I

    .line 28
    iget-object v3, v0, Lnb;->i:Lgb;

    const/16 v9, 0x101

    invoke-virtual {v3, v9, v2}, Lgb;->a(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x2

    move/from16 v8, v17

    goto :goto_3

    :cond_6
    move-object/from16 p2, v2

    move/from16 v16, v3

    move/from16 v17, v8

    if-ge v12, v9, :cond_7

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 30
    :cond_7
    iget-object v2, v1, Lob;->b:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqb;

    .line 31
    instance-of v3, v2, Lpb;

    if-eq v3, v13, :cond_9

    if-eqz v13, :cond_8

    .line 32
    new-instance v3, Lpb;

    .line 33
    iget-object v2, v2, Lqb;->c:Ljava/lang/String;

    .line 34
    invoke-direct {v3, v1, v11, v2}, Lpb;-><init>(Lob;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    new-instance v3, Lqb;

    .line 35
    iget-object v2, v2, Lqb;->c:Ljava/lang/String;

    .line 36
    invoke-direct {v3, v1, v11, v2}, Lqb;-><init>(Lob;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move-object v2, v3

    .line 37
    iget-object v3, v1, Lob;->b:Ljava/util/List;

    invoke-interface {v3, v12, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_9
    iget-object v3, v1, Lob;->b:Ljava/util/List;

    add-int/lit8 v8, v9, 0x1

    invoke-static {v3, v12, v9}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 39
    instance-of v3, v2, Lpb;

    if-eqz v3, :cond_a

    .line 40
    new-instance v3, LY6;

    invoke-direct {v3, v2, v10}, LY6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 41
    :cond_a
    invoke-virtual {v0, v2, v10}, Lnb;->a(Lqb;LSa;)I

    move-result v3

    if-eqz v3, :cond_b

    .line 42
    iget-object v3, v0, Lnb;->o:Lqb;

    if-ne v2, v3, :cond_b

    const/4 v2, 0x1

    move v9, v8

    const/4 v8, 0x1

    goto :goto_9

    :cond_b
    :goto_7
    move v9, v8

    :goto_8
    move/from16 v8, v17

    :goto_9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p2

    move/from16 v3, v16

    goto/16 :goto_1

    :cond_c
    move/from16 v17, v8

    .line 43
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LY6;

    .line 44
    iget-object v4, v3, LY6;->a:Ljava/lang/Object;

    check-cast v4, Lqb;

    .line 45
    iget-object v3, v3, LY6;->b:Ljava/lang/Object;

    check-cast v3, LSa;

    invoke-virtual {v4, v3}, Lqb;->a(LSa;)I

    .line 46
    iget-object v3, v0, Lnb;->i:Lgb;

    const/16 v5, 0x101

    invoke-virtual {v3, v5, v4}, Lgb;->a(ILjava/lang/Object;)V

    goto :goto_a

    .line 47
    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v8, v17

    :cond_e
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LY6;

    .line 48
    iget-object v4, v3, LY6;->a:Ljava/lang/Object;

    check-cast v4, Lqb;

    .line 49
    iget-object v3, v3, LY6;->b:Ljava/lang/Object;

    check-cast v3, LSa;

    invoke-virtual {v0, v4, v3}, Lnb;->a(Lqb;LSa;)I

    move-result v3

    if-eqz v3, :cond_e

    .line 50
    iget-object v3, v0, Lnb;->o:Lqb;

    if-ne v4, v3, :cond_e

    const/4 v8, 0x1

    goto :goto_b

    .line 51
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring invalid provider descriptor: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 52
    :cond_11
    iget-object v2, v1, Lob;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_c
    if-lt v2, v9, :cond_12

    .line 53
    iget-object v3, v1, Lob;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqb;

    const/4 v4, 0x0

    .line 54
    invoke-virtual {v3, v4}, Lqb;->a(LSa;)I

    .line 55
    iget-object v4, v0, Lnb;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 56
    :cond_12
    invoke-virtual {v0, v8}, Lnb;->a(Z)V

    .line 57
    iget-object v2, v1, Lob;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_d
    if-lt v2, v9, :cond_13

    .line 58
    iget-object v3, v1, Lob;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqb;

    .line 59
    iget-object v4, v0, Lnb;->i:Lgb;

    const/16 v5, 0x102

    invoke-virtual {v4, v5, v3}, Lgb;->a(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 60
    :cond_13
    iget-object v2, v0, Lnb;->i:Lgb;

    const/16 v3, 0x203

    invoke-virtual {v2, v3, v1}, Lgb;->a(ILjava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public a(Lqb;I)V
    .locals 2

    .line 61
    iget-object v0, p0, Lnb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MediaRouter"

    if-nez v0, :cond_0

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to select removed route: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    iget-boolean v0, p1, Lqb;->g:Z

    if-nez v0, :cond_1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to select disabled route: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_1
    invoke-virtual {p0, p1, p2}, Lnb;->b(Lqb;I)V

    return-void
.end method

.method public a(Z)V
    .locals 7

    .line 82
    iget-object v0, p0, Lnb;->m:Lqb;

    const/4 v1, 0x0

    const-string v2, "MediaRouter"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lqb;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Clearing the default route because it is no longer selectable: "

    .line 83
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lnb;->m:Lqb;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object v1, p0, Lnb;->m:Lqb;

    .line 85
    :cond_0
    iget-object v0, p0, Lnb;->m:Lqb;

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    iget-object v0, p0, Lnb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqb;

    .line 87
    invoke-virtual {v4}, Lqb;->a()LYa;

    move-result-object v5

    iget-object v6, p0, Lnb;->j:LXb;

    if-ne v5, v6, :cond_2

    iget-object v5, v4, Lqb;->b:Ljava/lang/String;

    const-string v6, "DEFAULT_ROUTE"

    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 89
    invoke-virtual {v4}, Lqb;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    iput-object v4, p0, Lnb;->m:Lqb;

    const-string v0, "Found default route: "

    .line 91
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lnb;->m:Lqb;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_3
    iget-object v0, p0, Lnb;->n:Lqb;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lqb;->c()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Clearing the bluetooth route because it is no longer selectable: "

    .line 93
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lnb;->n:Lqb;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object v1, p0, Lnb;->n:Lqb;

    .line 95
    :cond_4
    iget-object v0, p0, Lnb;->n:Lqb;

    if-nez v0, :cond_6

    iget-object v0, p0, Lnb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 96
    iget-object v0, p0, Lnb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqb;

    .line 97
    invoke-virtual {p0, v1}, Lnb;->a(Lqb;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lqb;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    iput-object v1, p0, Lnb;->n:Lqb;

    const-string v0, "Found bluetooth route: "

    .line 99
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnb;->n:Lqb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_6
    iget-object v0, p0, Lnb;->o:Lqb;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lqb;->c()Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_4

    :cond_7
    if-eqz p1, :cond_e

    .line 101
    iget-object p1, p0, Lnb;->o:Lqb;

    instance-of v0, p1, Lpb;

    if-eqz v0, :cond_c

    .line 102
    check-cast p1, Lpb;

    .line 103
    iget-object p1, p1, Lpb;->v:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqb;

    .line 106
    iget-object v2, v2, Lqb;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_8
    iget-object v1, p0, Lnb;->q:Ljava/util/Map;

    .line 108
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 109
    :cond_9
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LXa;

    .line 113
    invoke-virtual {v2}, LXa;->c()V

    .line 114
    invoke-virtual {v2}, LXa;->a()V

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 116
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqb;

    .line 117
    iget-object v1, p0, Lnb;->q:Ljava/util/Map;

    iget-object v2, v0, Lqb;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 118
    invoke-virtual {v0}, Lqb;->a()LYa;

    move-result-object v1

    iget-object v2, v0, Lqb;->b:Ljava/lang/String;

    iget-object v3, p0, Lnb;->o:Lqb;

    iget-object v3, v3, Lqb;->b:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v2, v3}, LYa;->a(Ljava/lang/String;Ljava/lang/String;)LXa;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, LXa;->b()V

    .line 121
    iget-object v2, p0, Lnb;->q:Ljava/util/Map;

    iget-object v0, v0, Lqb;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 122
    :cond_c
    invoke-virtual {p0}, Lnb;->e()V

    goto :goto_5

    :cond_d
    :goto_4
    const-string p1, "Unselecting the current route because it is no longer selectable: "

    .line 123
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lnb;->o:Lqb;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lnb;->a()Lqb;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lnb;->b(Lqb;I)V

    :cond_e
    :goto_5
    return-void
.end method

.method public final a(Lqb;)Z
    .locals 2

    .line 130
    invoke-virtual {p1}, Lqb;->a()LYa;

    move-result-object v0

    iget-object v1, p0, Lnb;->j:LXb;

    if-ne v0, v1, :cond_0

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 131
    invoke-virtual {p1, v0}, Lqb;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 132
    invoke-virtual {p1, v0}, Lqb;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(LYa;)I
    .locals 3

    .line 3
    iget-object v0, p0, Lnb;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Lnb;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lob;

    iget-object v2, v2, Lob;->a:LYa;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public b()Lqb;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb;->m:Lqb;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 53
    invoke-virtual {p0, p1}, Lnb;->a(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 54
    iget-object v0, p0, Lnb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmb;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p1, Lmb;->b:Z

    .line 56
    iget-object p1, p1, Lmb;->a:LOb;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p1, LOb;->b:LNb;

    :cond_0
    return-void
.end method

.method public final b(Lqb;I)V
    .locals 6

    .line 5
    sget-object v0, Lrb;->c:Lnb;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnb;->n:Lqb;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lrb;->e()V

    .line 7
    sget-object v0, Lrb;->c:Lnb;

    invoke-virtual {v0}, Lnb;->b()Lqb;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    goto :goto_1

    .line 8
    :cond_1
    throw v1

    .line 9
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    .line 11
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 12
    aget-object v4, v0, v3

    .line 13
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    .line 14
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 16
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  "

    .line 18
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 19
    :cond_3
    sget-object v0, Lrb;->c:Lnb;

    const-string v3, ", callers="

    const-string v4, "MediaRouter"

    if-nez v0, :cond_4

    const-string v0, "setSelectedRouteInternal is called while sGlobal is null: pkgName="

    .line 20
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lnb;->a:Landroid/content/Context;

    .line 21
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string v0, "Default route is selected while a BT route is available: pkgName="

    .line 23
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lnb;->a:Landroid/content/Context;

    .line 24
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_5
    :goto_3
    iget-object v0, p0, Lnb;->o:Lqb;

    if-eq v0, p1, :cond_b

    if-eqz v0, :cond_8

    .line 27
    iget-object v2, p0, Lnb;->i:Lgb;

    const/16 v3, 0x107

    .line 28
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 29
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 30
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31
    iget-object v0, p0, Lnb;->p:LXa;

    if-eqz v0, :cond_6

    .line 32
    invoke-virtual {v0, p2}, LXa;->b(I)V

    .line 33
    iget-object v0, p0, Lnb;->p:LXa;

    invoke-virtual {v0}, LXa;->a()V

    .line 34
    iput-object v1, p0, Lnb;->p:LXa;

    .line 35
    :cond_6
    iget-object v0, p0, Lnb;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 36
    iget-object v0, p0, Lnb;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LXa;

    .line 37
    invoke-virtual {v1, p2}, LXa;->b(I)V

    .line 38
    invoke-virtual {v1}, LXa;->a()V

    goto :goto_4

    .line 39
    :cond_7
    iget-object p2, p0, Lnb;->q:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 40
    :cond_8
    iput-object p1, p0, Lnb;->o:Lqb;

    .line 41
    invoke-virtual {p1}, Lqb;->a()LYa;

    move-result-object p2

    iget-object p1, p1, Lqb;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, LYa;->a(Ljava/lang/String;)LXa;

    move-result-object p1

    iput-object p1, p0, Lnb;->p:LXa;

    if-eqz p1, :cond_9

    .line 42
    invoke-virtual {p1}, LXa;->b()V

    .line 43
    :cond_9
    iget-object p1, p0, Lnb;->i:Lgb;

    const/16 p2, 0x106

    iget-object v0, p0, Lnb;->o:Lqb;

    invoke-virtual {p1, p2, v0}, Lgb;->a(ILjava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lnb;->o:Lqb;

    instance-of p2, p1, Lpb;

    if-eqz p2, :cond_a

    .line 45
    check-cast p1, Lpb;

    .line 46
    iget-object p1, p1, Lpb;->v:Ljava/util/List;

    .line 47
    iget-object p2, p0, Lnb;->q:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lqb;

    .line 49
    invoke-virtual {p2}, Lqb;->a()LYa;

    move-result-object v0

    iget-object v1, p2, Lqb;->b:Ljava/lang/String;

    iget-object v2, p0, Lnb;->o:Lqb;

    iget-object v2, v2, Lqb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LYa;->a(Ljava/lang/String;Ljava/lang/String;)LXa;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, LXa;->b()V

    .line 51
    iget-object v1, p0, Lnb;->q:Ljava/util/Map;

    iget-object p2, p2, Lqb;->b:Ljava/lang/String;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 52
    :cond_a
    invoke-virtual {p0}, Lnb;->e()V

    :cond_b
    return-void
.end method

.method public c()Lqb;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb;->o:Lqb;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .locals 11

    .line 1
    new-instance v0, Lab;

    invoke-direct {v0}, Lab;-><init>()V

    .line 2
    iget-object v1, p0, Lnb;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    .line 3
    iget-object v5, p0, Lnb;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrb;

    if-nez v5, :cond_0

    .line 4
    iget-object v5, p0, Lnb;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v6, v5, Lrb;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_4

    .line 6
    iget-object v8, v5, Lrb;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldb;

    .line 7
    iget-object v9, v8, Ldb;->c:Lbb;

    invoke-virtual {v0, v9}, Lab;->a(Lbb;)Lab;

    .line 8
    iget v9, v8, Ldb;->d:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    const/4 v4, 0x1

    const/4 v7, 0x1

    .line 9
    :cond_1
    iget v9, v8, Ldb;->d:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_2

    .line 10
    iget-boolean v9, p0, Lnb;->k:Z

    if-nez v9, :cond_2

    const/4 v4, 0x1

    .line 11
    :cond_2
    iget v8, v8, Ldb;->d:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v4

    move v4, v7

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 12
    invoke-virtual {v0}, Lab;->a()Lbb;

    move-result-object v0

    goto :goto_2

    :cond_6
    sget-object v0, Lbb;->c:Lbb;

    .line 13
    :goto_2
    iget-object v1, p0, Lnb;->r:LTa;

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {v1}, LTa;->a()V

    .line 15
    iget-object v1, v1, LTa;->b:Lbb;

    .line 16
    invoke-virtual {v1, v0}, Lbb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lnb;->r:LTa;

    .line 17
    invoke-virtual {v1}, LTa;->b()Z

    move-result v1

    if-ne v1, v4, :cond_7

    return-void

    .line 18
    :cond_7
    invoke-virtual {v0}, Lbb;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v4, :cond_9

    .line 19
    iget-object v0, p0, Lnb;->r:LTa;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lnb;->r:LTa;

    goto :goto_3

    .line 21
    :cond_9
    new-instance v1, LTa;

    invoke-direct {v1, v0, v4}, LTa;-><init>(Lbb;Z)V

    iput-object v1, p0, Lnb;->r:LTa;

    :goto_3
    if-eqz v3, :cond_a

    if-nez v4, :cond_a

    .line 22
    iget-boolean v0, p0, Lnb;->k:Z

    if-eqz v0, :cond_a

    const-string v0, "MediaRouter"

    const-string v1, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_a
    iget-object v0, p0, Lnb;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_b

    .line 25
    iget-object v1, p0, Lnb;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lob;

    iget-object v1, v1, Lob;->a:LYa;

    iget-object v3, p0, Lnb;->r:LTa;

    invoke-virtual {v1, v3}, LYa;->b(LTa;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    return-void
.end method

.method public final e()V
    .locals 11

    .line 1
    iget-object v0, p0, Lnb;->o:Lqb;

    if-eqz v0, :cond_8

    .line 2
    iget-object v1, p0, Lnb;->g:LMb;

    .line 3
    iget v2, v0, Lqb;->p:I

    .line 4
    iput v2, v1, LMb;->a:I

    .line 5
    iget v2, v0, Lqb;->q:I

    .line 6
    iput v2, v1, LMb;->b:I

    .line 7
    iget v2, v0, Lqb;->o:I

    .line 8
    iput v2, v1, LMb;->c:I

    .line 9
    iget v2, v0, Lqb;->m:I

    .line 10
    iput v2, v1, LMb;->d:I

    .line 11
    iget v0, v0, Lqb;->l:I

    .line 12
    iput v0, v1, LMb;->e:I

    .line 13
    iget-object v0, p0, Lnb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 14
    iget-object v3, p0, Lnb;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmb;

    .line 15
    iget-object v4, v3, Lmb;->a:LOb;

    iget-object v3, v3, Lmb;->c:Lnb;

    iget-object v3, v3, Lnb;->g:LMb;

    invoke-virtual {v4, v3}, LOb;->a(LMb;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lnb;->s:Lkb;

    if-eqz v0, :cond_9

    .line 17
    iget-object v0, p0, Lnb;->o:Lqb;

    invoke-virtual {p0}, Lnb;->b()Lqb;

    move-result-object v2

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lnb;->o:Lqb;

    .line 18
    iget-object v2, p0, Lnb;->n:Lqb;

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, p0, Lnb;->g:LMb;

    iget v0, v0, LMb;->c:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x2

    .line 20
    :cond_2
    iget-object v0, p0, Lnb;->s:Lkb;

    iget-object v2, p0, Lnb;->g:LMb;

    iget v3, v2, LMb;->b:I

    iget v2, v2, LMb;->a:I

    .line 21
    iget-object v4, v0, Lkb;->a:LS5;

    if-eqz v4, :cond_9

    .line 22
    iget-object v4, v0, Lkb;->b:LY4;

    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    if-nez v3, :cond_5

    .line 23
    iput v2, v4, LY4;->c:I

    .line 24
    invoke-virtual {v4}, LY4;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 25
    check-cast v0, Landroid/media/VolumeProvider;

    invoke-virtual {v0, v2}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    .line 26
    :cond_3
    iget-object v0, v4, LY4;->d:LX4;

    if-eqz v0, :cond_9

    .line 27
    check-cast v0, LM5;

    .line 28
    iget-object v1, v0, LM5;->a:LN5;

    iget-object v1, v1, LN5;->c:LY4;

    if-eq v1, v4, :cond_4

    goto :goto_2

    .line 29
    :cond_4
    new-instance v1, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget-object v2, v0, LM5;->a:LN5;

    iget v6, v2, LN5;->a:I

    iget v7, v2, LN5;->b:I

    .line 30
    iget v8, v4, LY4;->a:I

    .line 31
    iget v9, v4, LY4;->b:I

    .line 32
    iget v10, v4, LY4;->c:I

    move-object v5, v1

    .line 33
    invoke-direct/range {v5 .. v10}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 34
    iget-object v0, v0, LM5;->a:LN5;

    invoke-virtual {v0, v1}, LN5;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    goto :goto_2

    .line 35
    :cond_5
    new-instance v4, Ljb;

    invoke-direct {v4, v0, v1, v3, v2}, Ljb;-><init>(Lkb;III)V

    iput-object v4, v0, Lkb;->b:LY4;

    .line 36
    iget-object v0, v0, Lkb;->a:LS5;

    if-eqz v0, :cond_6

    .line 37
    iget-object v0, v0, LS5;->a:LI5;

    invoke-interface {v0, v4}, LI5;->a(LY4;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 38
    throw v0

    .line 39
    :cond_7
    :goto_1
    iget-object v0, p0, Lnb;->s:Lkb;

    invoke-virtual {v0}, Lkb;->a()V

    goto :goto_2

    .line 40
    :cond_8
    iget-object v0, p0, Lnb;->s:Lkb;

    if-eqz v0, :cond_9

    .line 41
    invoke-virtual {v0}, Lkb;->a()V

    :cond_9
    :goto_2
    return-void
.end method
