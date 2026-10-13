.class public final Lcc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lyc;

.field public final b:Landroid/content/Context;

.field public c:Z


# direct methods
.method public constructor <init>(Lvc;Lyc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcc;->c:Z

    .line 3
    iput-object p2, p0, Lcc;->a:Lyc;

    .line 4
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 5
    iput-object p1, p0, Lcc;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lvc;)Ljava/util/List;
    .locals 9

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcc;->c:Z

    .line 2
    iget v1, p1, Lvc;->m0:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p1}, Lvc;->w()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v0, v4, :cond_b

    .line 6
    invoke-virtual {p1, v0}, Lvc;->e(I)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 7
    iget-boolean v7, v6, Landroid/support/v7/preference/Preference;->U:Z

    if-nez v7, :cond_1

    goto :goto_8

    :cond_1
    if-eqz v1, :cond_3

    .line 8
    iget v7, p1, Lvc;->m0:I

    if-ge v5, v7, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 10
    :cond_3
    :goto_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_3
    instance-of v7, v6, Lvc;

    if-nez v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 12
    :cond_4
    check-cast v6, Lvc;

    .line 13
    invoke-virtual {v6}, Lvc;->x()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_8

    .line 14
    :cond_5
    invoke-virtual {p0, v6}, Lcc;->a(Lvc;)Ljava/util/List;

    move-result-object v6

    if-eqz v1, :cond_7

    .line 15
    iget-boolean v7, p0, Lcc;->c:Z

    if-nez v7, :cond_6

    goto :goto_4

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Nested expand buttons are not supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_9

    .line 18
    iget v8, p1, Lvc;->m0:I

    if-ge v5, v8, :cond_8

    goto :goto_6

    .line 19
    :cond_8
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 20
    :cond_9
    :goto_6
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    if-eqz v1, :cond_c

    .line 21
    iget v0, p1, Lvc;->m0:I

    if-le v5, v0, :cond_c

    .line 22
    new-instance v0, Lbc;

    iget-object v4, p0, Lcc;->b:Landroid/content/Context;

    .line 23
    iget-wide v5, p1, Landroid/support/v7/preference/Preference;->y:J

    .line 24
    invoke-direct {v0, v4, v3, v5, v6}, Lbc;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 25
    new-instance v3, Lac;

    invoke-direct {v3, p0, p1}, Lac;-><init>(Lcc;Lvc;)V

    .line 26
    iput-object v3, v0, Landroid/support/v7/preference/Preference;->B:Lmc;

    .line 27
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_c
    iget-boolean p1, p0, Lcc;->c:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcc;->c:Z

    return-object v2
.end method
