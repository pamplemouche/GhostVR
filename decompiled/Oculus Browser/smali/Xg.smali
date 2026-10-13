.class public final LXg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:LWg;

.field public final synthetic h:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LXg;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, LXg;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LXg;->c:Ljava/util/ArrayList;

    .line 5
    iget-object p1, p0, LXg;->a:Ljava/util/ArrayList;

    .line 6
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LXg;->d:Ljava/util/List;

    const/4 p1, 0x2

    .line 7
    iput p1, p0, LXg;->e:I

    .line 8
    iput p1, p0, LXg;->f:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 3
    iget-object v0, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v0}, Lbh;->a()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 4
    iget-object v0, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 5
    iget-boolean v1, v1, Lbh;->g:Z

    if-nez v1, :cond_0

    return p1

    .line 6
    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Lme;->a(II)I

    move-result p1

    return p1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 9
    invoke-virtual {p1}, Lbh;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, v1}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(IZJ)Ldh;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    if-ltz v0, :cond_49

    .line 10
    iget-object v2, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v2}, Lbh;->a()I

    move-result v2

    if-ge v0, v2, :cond_49

    .line 11
    iget-object v2, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 12
    iget-boolean v2, v2, Lbh;->g:Z

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 13
    iget-object v2, v1, LXg;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_2

    .line 14
    iget-object v7, v1, LXg;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldh;

    .line 15
    invoke-virtual {v7}, Ldh;->o()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Ldh;->d()I

    move-result v8

    if-ne v8, v0, :cond_1

    .line 16
    invoke-virtual {v7, v3}, Ldh;->a(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iget-object v6, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v6, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 18
    iget-boolean v7, v7, LBg;->x:Z

    if-eqz v7, :cond_4

    .line 19
    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    .line 20
    invoke-virtual {v6, v0, v5}, Lme;->a(II)I

    move-result v6

    if-lez v6, :cond_4

    .line 21
    iget-object v7, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    invoke-virtual {v7}, LBg;->a()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 22
    iget-object v7, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    invoke-virtual {v7, v6}, LBg;->a(I)J

    move-result-wide v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_4

    .line 23
    iget-object v9, v1, LXg;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldh;

    .line 24
    invoke-virtual {v9}, Ldh;->o()Z

    move-result v10

    if-nez v10, :cond_3

    .line 25
    iget-wide v10, v9, Ldh;->A:J

    cmp-long v12, v10, v6

    if-nez v12, :cond_3

    .line 26
    invoke-virtual {v9, v3}, Ldh;->a(I)V

    move-object v7, v9

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move-object v7, v4

    :goto_3
    if-eqz v7, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    move-object v7, v4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    const/4 v6, -0x1

    if-nez v7, :cond_1d

    .line 27
    iget-object v7, v1, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_9

    .line 28
    iget-object v9, v1, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldh;

    .line 29
    invoke-virtual {v9}, Ldh;->o()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v9}, Ldh;->d()I

    move-result v10

    if-ne v10, v0, :cond_8

    .line 30
    invoke-virtual {v9}, Ldh;->g()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v10, v10, Lbh;->g:Z

    if-nez v10, :cond_7

    invoke-virtual {v9}, Ldh;->i()Z

    move-result v10

    if-nez v10, :cond_8

    .line 31
    :cond_7
    invoke-virtual {v9, v3}, Ldh;->a(I)V

    goto/16 :goto_9

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    if-nez p2, :cond_10

    .line 32
    iget-object v7, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    .line 33
    iget-object v8, v7, LWe;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_c

    .line 34
    iget-object v10, v7, LWe;->c:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 35
    iget-object v11, v7, LWe;->a:LVe;

    check-cast v11, Lzg;

    if-eqz v11, :cond_b

    .line 36
    invoke-static {v10}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v11

    .line 37
    invoke-virtual {v11}, Ldh;->d()I

    move-result v12

    if-ne v12, v0, :cond_a

    .line 38
    invoke-virtual {v11}, Ldh;->g()Z

    move-result v12

    if-nez v12, :cond_a

    .line 39
    invoke-virtual {v11}, Ldh;->i()Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 40
    :cond_b
    throw v4

    :cond_c
    move-object v10, v4

    :goto_7
    if-eqz v10, :cond_10

    .line 41
    invoke-static {v10}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v7

    .line 42
    iget-object v8, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    .line 43
    iget-object v9, v8, LWe;->a:LVe;

    check-cast v9, Lzg;

    .line 44
    iget-object v9, v9, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    if-ltz v9, :cond_f

    .line 45
    iget-object v11, v8, LWe;->b:LUe;

    invoke-virtual {v11, v9}, LUe;->c(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 46
    iget-object v11, v8, LWe;->b:LUe;

    invoke-virtual {v11, v9}, LUe;->a(I)V

    .line 47
    invoke-virtual {v8, v10}, LWe;->d(Landroid/view/View;)Z

    .line 48
    iget-object v8, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v8, v10}, LWe;->b(Landroid/view/View;)I

    move-result v8

    if-eq v8, v6, :cond_d

    .line 49
    iget-object v9, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v9, v8}, LWe;->a(I)V

    .line 50
    invoke-virtual {v1, v10}, LXg;->b(Landroid/view/View;)V

    const/16 v8, 0x2020

    .line 51
    invoke-virtual {v7, v8}, Ldh;->a(I)V

    move-object v9, v7

    goto :goto_9

    .line 52
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    .line 53
    invoke-static {v3, v2}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view is not a child, cannot hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_10
    iget-object v7, v1, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_12

    .line 57
    iget-object v9, v1, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldh;

    .line 58
    invoke-virtual {v9}, Ldh;->g()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual {v9}, Ldh;->d()I

    move-result v10

    if-ne v10, v0, :cond_11

    if-nez p2, :cond_13

    .line 59
    iget-object v7, v1, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_12
    move-object v9, v4

    :cond_13
    :goto_9
    if-eqz v9, :cond_1e

    .line 60
    invoke-virtual {v9}, Ldh;->i()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 61
    iget-object v7, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 62
    iget-boolean v7, v7, Lbh;->g:Z

    goto :goto_c

    .line 63
    :cond_14
    iget v7, v9, Ldh;->y:I

    if-ltz v7, :cond_1c

    iget-object v8, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    invoke-virtual {v8}, LBg;->a()I

    move-result v8

    if-ge v7, v8, :cond_1c

    .line 64
    iget-object v7, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 65
    iget-boolean v8, v8, Lbh;->g:Z

    if-nez v8, :cond_15

    .line 66
    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    iget v8, v9, Ldh;->y:I

    invoke-virtual {v7, v8}, LBg;->b(I)I

    move-result v7

    .line 67
    iget v8, v9, Ldh;->B:I

    if-eq v7, v8, :cond_15

    goto :goto_a

    .line 68
    :cond_15
    iget-object v7, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 69
    iget-boolean v8, v7, LBg;->x:Z

    if-eqz v8, :cond_17

    .line 70
    iget-wide v10, v9, Ldh;->A:J

    .line 71
    iget v8, v9, Ldh;->y:I

    invoke-virtual {v7, v8}, LBg;->a(I)J

    move-result-wide v7

    cmp-long v12, v10, v7

    if-nez v12, :cond_16

    goto :goto_b

    :cond_16
    :goto_a
    const/4 v7, 0x0

    goto :goto_c

    :cond_17
    :goto_b
    const/4 v7, 0x1

    :goto_c
    if-nez v7, :cond_1b

    if-nez p2, :cond_1a

    const/4 v7, 0x4

    .line 72
    invoke-virtual {v9, v7}, Ldh;->a(I)V

    .line 73
    invoke-virtual {v9}, Ldh;->j()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 74
    iget-object v7, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v9, Ldh;->w:Landroid/view/View;

    invoke-virtual {v7, v8, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 75
    iget-object v7, v9, Ldh;->J:LXg;

    invoke-virtual {v7, v9}, LXg;->b(Ldh;)V

    goto :goto_d

    .line 76
    :cond_18
    invoke-virtual {v9}, Ldh;->o()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 77
    invoke-virtual {v9}, Ldh;->b()V

    .line 78
    :cond_19
    :goto_d
    invoke-virtual {v1, v9}, LXg;->a(Ldh;)V

    :cond_1a
    move-object v9, v4

    goto :goto_e

    :cond_1b
    const/4 v2, 0x1

    goto :goto_e

    .line 79
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    .line 80
    invoke-static {v3, v2}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move-object v9, v7

    :cond_1e
    :goto_e
    const/4 v7, 0x2

    if-nez v9, :cond_32

    .line 81
    iget-object v8, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    .line 82
    invoke-virtual {v8, v0, v5}, Lme;->a(II)I

    move-result v8

    if-ltz v8, :cond_31

    .line 83
    iget-object v10, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    invoke-virtual {v10}, LBg;->a()I

    move-result v10

    if-ge v8, v10, :cond_31

    .line 84
    iget-object v10, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    invoke-virtual {v10, v8}, LBg;->b(I)I

    move-result v10

    .line 85
    iget-object v11, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 86
    iget-boolean v12, v11, LBg;->x:Z

    if-eqz v12, :cond_27

    .line 87
    invoke-virtual {v11, v8}, LBg;->a(I)J

    move-result-wide v11

    .line 88
    iget-object v9, v1, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v9, v6

    :goto_f
    if-ltz v9, :cond_22

    .line 89
    iget-object v13, v1, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldh;

    .line 90
    iget-wide v14, v13, Ldh;->A:J

    cmp-long v16, v14, v11

    if-nez v16, :cond_21

    .line 91
    invoke-virtual {v13}, Ldh;->o()Z

    move-result v14

    if-nez v14, :cond_21

    .line 92
    iget v14, v13, Ldh;->B:I

    if-ne v10, v14, :cond_20

    .line 93
    invoke-virtual {v13, v3}, Ldh;->a(I)V

    .line 94
    invoke-virtual {v13}, Ldh;->i()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 95
    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 96
    iget-boolean v3, v3, Lbh;->g:Z

    if-nez v3, :cond_1f

    const/16 v3, 0xe

    .line 97
    invoke-virtual {v13, v7, v3}, Ldh;->a(II)V

    :cond_1f
    move-object v9, v13

    goto :goto_12

    :cond_20
    if-nez p2, :cond_21

    .line 98
    iget-object v14, v1, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    iget-object v14, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v15, v13, Ldh;->w:Landroid/view/View;

    invoke-virtual {v14, v15, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 100
    iget-object v13, v13, Ldh;->w:Landroid/view/View;

    .line 101
    invoke-static {v13}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v13

    .line 102
    iput-object v4, v13, Ldh;->J:LXg;

    .line 103
    iput-boolean v5, v13, Ldh;->K:Z

    .line 104
    invoke-virtual {v13}, Ldh;->b()V

    .line 105
    invoke-virtual {v1, v13}, LXg;->a(Ldh;)V

    :cond_21
    add-int/lit8 v9, v9, -0x1

    goto :goto_f

    .line 106
    :cond_22
    iget-object v3, v1, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v6

    :goto_10
    if-ltz v3, :cond_25

    .line 107
    iget-object v9, v1, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldh;

    .line 108
    iget-wide v13, v9, Ldh;->A:J

    cmp-long v15, v13, v11

    if-nez v15, :cond_24

    .line 109
    iget v13, v9, Ldh;->B:I

    if-ne v10, v13, :cond_23

    if-nez p2, :cond_26

    .line 110
    iget-object v11, v1, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_12

    :cond_23
    if-nez p2, :cond_24

    .line 111
    invoke-virtual {v1, v3}, LXg;->c(I)V

    goto :goto_11

    :cond_24
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    :cond_25
    :goto_11
    move-object v9, v4

    :cond_26
    :goto_12
    if-eqz v9, :cond_27

    .line 112
    iput v8, v9, Ldh;->y:I

    const/4 v2, 0x1

    :cond_27
    if-nez v9, :cond_2a

    .line 113
    invoke-virtual/range {p0 .. p0}, LXg;->b()LWg;

    move-result-object v3

    .line 114
    iget-object v3, v3, LWg;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LVg;

    if-eqz v3, :cond_28

    .line 115
    iget-object v8, v3, LVg;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_28

    .line 116
    iget-object v3, v3, LVg;->a:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldh;

    goto :goto_13

    :cond_28
    move-object v3, v4

    :goto_13
    if-eqz v3, :cond_29

    .line 118
    invoke-virtual {v3}, Ldh;->m()V

    .line 119
    sget-boolean v6, Landroid/support/v7/widget/RecyclerView;->V0:Z

    if-eqz v6, :cond_29

    .line 120
    iget-object v6, v3, Ldh;->w:Landroid/view/View;

    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_29

    .line 121
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v5}, LXg;->a(Landroid/view/ViewGroup;Z)V

    :cond_29
    move-object v9, v3

    :cond_2a
    if-nez v9, :cond_32

    .line 122
    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->l()J

    move-result-wide v8

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v3, p3, v11

    if-eqz v3, :cond_2d

    .line 123
    iget-object v3, v1, LXg;->g:LWg;

    .line 124
    invoke-virtual {v3, v10}, LWg;->a(I)LVg;

    move-result-object v3

    iget-wide v11, v3, LVg;->c:J

    const-wide/16 v13, 0x0

    cmp-long v3, v11, v13

    if-eqz v3, :cond_2c

    add-long/2addr v11, v8

    cmp-long v3, v11, p3

    if-gez v3, :cond_2b

    goto :goto_14

    :cond_2b
    const/4 v3, 0x0

    goto :goto_15

    :cond_2c
    :goto_14
    const/4 v3, 0x1

    :goto_15
    if-nez v3, :cond_2d

    return-object v4

    .line 125
    :cond_2d
    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v3, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz v6, :cond_30

    :try_start_0
    const-string v11, "RV CreateView"

    .line 126
    invoke-static {v11}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v6, v3, v10}, LBg;->a(Landroid/view/ViewGroup;I)Ldh;

    move-result-object v3

    .line 128
    iget-object v6, v3, Ldh;->w:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_2f

    .line 129
    iput v10, v3, Ldh;->B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 131
    sget-boolean v6, Landroid/support/v7/widget/RecyclerView;->Y0:Z

    if-eqz v6, :cond_2e

    .line 132
    iget-object v6, v3, Ldh;->w:Landroid/view/View;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    if-eqz v6, :cond_2e

    .line 133
    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v11, v3, Ldh;->x:Ljava/lang/ref/WeakReference;

    .line 134
    :cond_2e
    iget-object v6, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->l()J

    move-result-wide v11

    .line 135
    iget-object v6, v1, LXg;->g:LWg;

    sub-long/2addr v11, v8

    .line 136
    invoke-virtual {v6, v10}, LWg;->a(I)LVg;

    move-result-object v8

    .line 137
    iget-wide v9, v8, LVg;->c:J

    invoke-virtual {v6, v9, v10, v11, v12}, LWg;->a(JJ)J

    move-result-wide v9

    iput-wide v9, v8, LVg;->c:J

    move-object v9, v3

    goto :goto_16

    .line 138
    :cond_2f
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 139
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 140
    throw v0

    .line 141
    :cond_30
    throw v4

    .line 142
    :cond_31
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistency detected. Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(offset:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "state:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 143
    invoke-virtual {v0}, Lbh;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v3}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_32
    :goto_16
    if-eqz v2, :cond_33

    .line 144
    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 145
    iget-boolean v3, v3, Lbh;->g:Z

    if-nez v3, :cond_33

    const/16 v3, 0x2000

    .line 146
    invoke-virtual {v9, v3}, Ldh;->b(I)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 147
    invoke-virtual {v9, v5, v3}, Ldh;->a(II)V

    .line 148
    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v3, v3, Lbh;->j:Z

    if-eqz v3, :cond_33

    .line 149
    invoke-static {v9}, LJg;->d(Ldh;)I

    .line 150
    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v3, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 151
    invoke-virtual {v9}, Ldh;->e()Ljava/util/List;

    .line 152
    invoke-virtual {v6, v9}, LJg;->c(Ldh;)LIg;

    move-result-object v3

    .line 153
    iget-object v6, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v9, v3}, Landroid/support/v7/widget/RecyclerView;->a(Ldh;LIg;)V

    .line 154
    :cond_33
    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 155
    iget-boolean v3, v3, Lbh;->g:Z

    if-eqz v3, :cond_34

    .line 156
    invoke-virtual {v9}, Ldh;->f()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 157
    iput v0, v9, Ldh;->C:I

    goto :goto_1a

    .line 158
    :cond_34
    invoke-virtual {v9}, Ldh;->f()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 159
    iget v3, v9, Ldh;->F:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_35

    const/4 v3, 0x1

    goto :goto_17

    :cond_35
    const/4 v3, 0x0

    :goto_17
    if-nez v3, :cond_36

    .line 160
    invoke-virtual {v9}, Ldh;->g()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 161
    :cond_36
    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    .line 162
    invoke-virtual {v3, v0, v5}, Lme;->a(II)I

    move-result v3

    .line 163
    iget-object v6, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iput-object v6, v9, Ldh;->N:Landroid/support/v7/widget/RecyclerView;

    .line 164
    iget v7, v9, Ldh;->B:I

    .line 165
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->l()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v6, p3, v12

    if-eqz v6, :cond_3a

    .line 166
    iget-object v6, v1, LXg;->g:LWg;

    .line 167
    invoke-virtual {v6, v7}, LWg;->a(I)LVg;

    move-result-object v6

    iget-wide v6, v6, LVg;->d:J

    const-wide/16 v12, 0x0

    cmp-long v8, v6, v12

    if-eqz v8, :cond_38

    add-long/2addr v6, v10

    cmp-long v8, v6, p3

    if-gez v8, :cond_37

    goto :goto_18

    :cond_37
    const/4 v6, 0x0

    goto :goto_19

    :cond_38
    :goto_18
    const/4 v6, 0x1

    :goto_19
    if-nez v6, :cond_3a

    :cond_39
    :goto_1a
    const/4 v0, 0x0

    goto/16 :goto_1f

    .line 168
    :cond_3a
    iget-object v6, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz v6, :cond_48

    .line 169
    iput v3, v9, Ldh;->y:I

    .line 170
    iget-boolean v4, v6, LBg;->x:Z

    if-eqz v4, :cond_3b

    .line 171
    invoke-virtual {v6, v3}, LBg;->a(I)J

    move-result-wide v7

    iput-wide v7, v9, Ldh;->A:J

    :cond_3b
    const/16 v4, 0x207

    const/4 v7, 0x1

    .line 172
    invoke-virtual {v9, v7, v4}, Ldh;->a(II)V

    const-string v4, "RV OnBindView"

    .line 173
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v9}, Ldh;->e()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v6, v9, v3, v4}, LBg;->a(Ldh;ILjava/util/List;)V

    .line 175
    iget-object v3, v9, Ldh;->G:Ljava/util/List;

    if-eqz v3, :cond_3c

    .line 176
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 177
    :cond_3c
    iget v3, v9, Ldh;->F:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v9, Ldh;->F:I

    .line 178
    iget-object v3, v9, Ldh;->w:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 179
    instance-of v4, v3, LRg;

    if-eqz v4, :cond_3d

    .line 180
    check-cast v3, LRg;

    const/4 v4, 0x1

    iput-boolean v4, v3, LRg;->c:Z

    .line 181
    :cond_3d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 182
    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->l()J

    move-result-wide v3

    .line 183
    iget-object v6, v1, LXg;->g:LWg;

    .line 184
    iget v7, v9, Ldh;->B:I

    sub-long/2addr v3, v10

    .line 185
    invoke-virtual {v6, v7}, LWg;->a(I)LVg;

    move-result-object v7

    .line 186
    iget-wide v10, v7, LVg;->d:J

    invoke-virtual {v6, v10, v11, v3, v4}, LWg;->a(JJ)J

    move-result-wide v3

    iput-wide v3, v7, LVg;->d:J

    .line 187
    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    .line 188
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->a0:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v3, 0x1

    goto :goto_1b

    :cond_3e
    const/4 v3, 0x0

    :goto_1b
    if-eqz v3, :cond_43

    .line 189
    iget-object v3, v9, Ldh;->w:Landroid/view/View;

    .line 190
    invoke-static {v3}, LA7;->g(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_3f

    const/4 v4, 0x1

    .line 191
    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 192
    :cond_3f
    sget-boolean v4, LA7;->c:Z

    if-eqz v4, :cond_40

    goto :goto_1d

    .line 193
    :cond_40
    sget-object v4, LA7;->b:Ljava/lang/reflect/Field;

    if-nez v4, :cond_41

    .line 194
    :try_start_2
    const-class v4, Landroid/view/View;

    const-string v6, "mAccessibilityDelegate"

    .line 195
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, LA7;->b:Ljava/lang/reflect/Field;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x1

    .line 196
    :try_start_3
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1c

    :catchall_1
    const/4 v6, 0x1

    .line 197
    :catchall_2
    sput-boolean v6, LA7;->c:Z

    goto :goto_1d

    .line 198
    :cond_41
    :goto_1c
    :try_start_4
    sget-object v4, LA7;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_42

    const/4 v4, 0x1

    goto :goto_1e

    :catchall_3
    const/4 v4, 0x1

    .line 199
    sput-boolean v4, LA7;->c:Z

    :cond_42
    :goto_1d
    const/4 v4, 0x0

    :goto_1e
    if-nez v4, :cond_43

    const/16 v4, 0x4000

    .line 200
    invoke-virtual {v9, v4}, Ldh;->a(I)V

    .line 201
    iget-object v4, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->I0:Lfh;

    .line 202
    invoke-virtual {v4}, Lfh;->a()Lh7;

    move-result-object v4

    .line 203
    invoke-static {v3, v4}, LA7;->a(Landroid/view/View;Lh7;)V

    .line 204
    :cond_43
    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 205
    iget-boolean v3, v3, Lbh;->g:Z

    if-eqz v3, :cond_44

    .line 206
    iput v0, v9, Ldh;->C:I

    :cond_44
    const/4 v0, 0x1

    .line 207
    :goto_1f
    iget-object v3, v9, Ldh;->w:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_45

    .line 208
    iget-object v3, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LRg;

    .line 209
    iget-object v4, v9, Ldh;->w:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_20

    .line 210
    :cond_45
    iget-object v4, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 211
    iget-object v4, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LRg;

    .line 212
    iget-object v4, v9, Ldh;->w:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_20

    .line 213
    :cond_46
    check-cast v3, LRg;

    .line 214
    :goto_20
    iput-object v9, v3, LRg;->a:Ldh;

    if-eqz v2, :cond_47

    if-eqz v0, :cond_47

    const/4 v5, 0x1

    .line 215
    :cond_47
    iput-boolean v5, v3, LRg;->d:Z

    return-object v9

    .line 216
    :cond_48
    throw v4

    .line 217
    :cond_49
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). Item count:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 218
    invoke-virtual {v0}, Lbh;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    .line 219
    invoke-static {v0, v3}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p0}, LXg;->c()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .line 230
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ldh;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 233
    :cond_0
    invoke-virtual {v0}, Ldh;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    iget-object p1, v0, Ldh;->J:LXg;

    invoke-virtual {p1, v0}, LXg;->b(Ldh;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v0}, Ldh;->o()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 236
    invoke-virtual {v0}, Ldh;->b()V

    .line 237
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, LXg;->a(Ldh;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 220
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 222
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 223
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v1}, LXg;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 224
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    .line 225
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 227
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 229
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public a(Ldh;)V
    .locals 7

    .line 238
    invoke-virtual {p1}, Ldh;->j()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    iget-object v0, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 239
    :cond_0
    invoke-virtual {p1}, Ldh;->k()Z

    move-result v0

    if-nez v0, :cond_d

    .line 240
    invoke-virtual {p1}, Ldh;->n()Z

    move-result v0

    if-nez v0, :cond_c

    .line 241
    iget v0, p1, Ldh;->F:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    iget-object v0, p1, Ldh;->w:Landroid/view/View;

    invoke-static {v0}, LA7;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 242
    :goto_0
    iget-object v3, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 243
    :cond_2
    throw v4

    .line 244
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ldh;->h()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 245
    iget v3, p0, LXg;->f:I

    if-lez v3, :cond_8

    const/16 v3, 0x20e

    .line 246
    invoke-virtual {p1, v3}, Ldh;->b(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 247
    iget-object v3, p0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 248
    iget v5, p0, LXg;->f:I

    if-lt v3, v5, :cond_4

    if-lez v3, :cond_4

    .line 249
    invoke-virtual {p0, v1}, LXg;->c(I)V

    add-int/lit8 v3, v3, -0x1

    .line 250
    :cond_4
    sget-boolean v5, Landroid/support/v7/widget/RecyclerView;->Y0:Z

    if-eqz v5, :cond_7

    if-lez v3, :cond_7

    iget-object v5, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->B0:LAf;

    iget v6, p1, Ldh;->y:I

    .line 251
    invoke-virtual {v5, v6}, LAf;->a(I)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_5
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_6

    .line 252
    iget-object v5, p0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldh;

    iget v5, v5, Ldh;->y:I

    .line 253
    iget-object v6, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->B0:LAf;

    invoke-virtual {v6, v5}, LAf;->a(I)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_6
    add-int/2addr v3, v2

    .line 254
    :cond_7
    iget-object v5, p0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_a

    .line 255
    invoke-virtual {p0, p1, v2}, LXg;->a(Ldh;Z)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    .line 256
    :cond_a
    :goto_3
    iget-object v2, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {v2, p1}, Lji;->d(Ldh;)V

    if-nez v3, :cond_b

    if-nez v1, :cond_b

    if-eqz v0, :cond_b

    .line 257
    iput-object v4, p1, Ldh;->N:Landroid/support/v7/widget/RecyclerView;

    :cond_b
    return-void

    .line 258
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    .line 259
    invoke-static {v1, v0}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    .line 261
    invoke-static {p1, v1}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_e
    :goto_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    invoke-virtual {p1}, Ldh;->j()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAttached:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, v2}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ldh;Z)V
    .locals 3

    .line 265
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->d(Ldh;)V

    const/16 v0, 0x4000

    .line 266
    invoke-virtual {p1, v0}, Ldh;->b(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 267
    invoke-virtual {p1, v1, v0}, Ldh;->a(II)V

    .line 268
    iget-object v0, p1, Ldh;->w:Landroid/view/View;

    invoke-static {v0, v2}, LA7;->a(Landroid/view/View;Lh7;)V

    :cond_0
    if-eqz p2, :cond_3

    .line 269
    iget-object p2, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->J:LYg;

    if-eqz p2, :cond_1

    .line 270
    invoke-interface {p2, p1}, LYg;->a(Ldh;)V

    .line 271
    :cond_1
    iget-object p2, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz p2, :cond_2

    .line 272
    invoke-virtual {p2, p1}, LBg;->a(Ldh;)V

    .line 273
    :cond_2
    iget-object p2, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    if-eqz v0, :cond_3

    .line 274
    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {p2, p1}, Lji;->d(Ldh;)V

    .line 275
    :cond_3
    iput-object v2, p1, Ldh;->N:Landroid/support/v7/widget/RecyclerView;

    .line 276
    invoke-virtual {p0}, LXg;->b()LWg;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 277
    iget v0, p1, Ldh;->B:I

    .line 278
    invoke-virtual {p2, v0}, LWg;->a(I)LVg;

    move-result-object v1

    iget-object v1, v1, LVg;->a:Ljava/util/ArrayList;

    .line 279
    iget-object p2, p2, LWg;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LVg;

    iget p2, p2, LVg;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_4

    goto :goto_0

    .line 280
    :cond_4
    invoke-virtual {p1}, Ldh;->m()V

    .line 281
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 282
    :cond_5
    throw v2
.end method

.method public b()LWg;
    .locals 1

    .line 26
    iget-object v0, p0, LXg;->g:LWg;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, LWg;

    invoke-direct {v0}, LWg;-><init>()V

    iput-object v0, p0, LXg;->g:LWg;

    .line 28
    :cond_0
    iget-object v0, p0, LXg;->g:LWg;

    return-object v0
.end method

.method public b(I)Landroid/view/View;
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, p1, v2, v0, v1}, LXg;->a(IZJ)Ldh;

    move-result-object p1

    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    return-object p1
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    .line 2
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object p1

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Ldh;->b(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 4
    invoke-virtual {p1}, Ldh;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    .line 5
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ldh;->e()Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-virtual {v0, p1, v3}, LJg;->a(Ldh;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, LXg;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LXg;->b:Ljava/util/ArrayList;

    .line 10
    :cond_3
    iput-object p0, p1, Ldh;->J:LXg;

    .line 11
    iput-boolean v2, p1, Ldh;->K:Z

    .line 12
    iget-object v0, p0, LXg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 13
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ldh;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ldh;->i()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 14
    iget-boolean v0, v0, LBg;->x:Z

    if-eqz v0, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    .line 16
    invoke-static {v1, v0}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_6
    :goto_3
    iput-object p0, p1, Ldh;->J:LXg;

    .line 18
    iput-boolean v1, p1, Ldh;->K:Z

    .line 19
    iget-object v0, p0, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    return-void
.end method

.method public b(Ldh;)V
    .locals 1

    .line 20
    iget-boolean v0, p1, Ldh;->K:Z

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, LXg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p1, Ldh;->J:LXg;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p1, Ldh;->K:Z

    .line 25
    invoke-virtual {p1}, Ldh;->b()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, LXg;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->Y0:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B0:LAf;

    .line 6
    iget-object v2, v0, LAf;->c:[I

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x0

    .line 8
    iput v1, v0, LAf;->d:I

    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 9
    iget-object v0, p0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldh;

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v0, v1}, LXg;->a(Ldh;Z)V

    .line 11
    iget-object v0, p0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_0

    iget v0, v0, LQg;->k:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, LXg;->e:I

    add-int/2addr v1, v0

    iput v1, p0, LXg;->f:I

    .line 3
    iget-object v0, p0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, LXg;->f:I

    if-le v1, v2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, LXg;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
