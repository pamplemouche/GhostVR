.class public Lqb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lob;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Landroid/net/Uri;

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Z

.field public final k:Ljava/util/ArrayList;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Landroid/os/Bundle;

.field public t:Landroid/content/IntentSender;

.field public u:LSa;


# direct methods
.method public constructor <init>(Lob;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqb;->k:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lqb;->r:I

    .line 4
    iput-object p1, p0, Lqb;->a:Lob;

    .line 5
    iput-object p2, p0, Lqb;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lqb;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(LSa;)I
    .locals 1

    .line 20
    iget-object v0, p0, Lqb;->u:LSa;

    if-eq v0, p1, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Lqb;->b(LSa;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a()LYa;
    .locals 1

    .line 22
    iget-object v0, p0, Lqb;->a:Lob;

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lrb;->e()V

    .line 24
    iget-object v0, v0, Lob;->a:LYa;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 25
    throw v0
.end method

.method public a(I)V
    .locals 3

    .line 13
    invoke-static {}, Lrb;->e()V

    .line 14
    sget-object v0, Lrb;->c:Lnb;

    iget v1, p0, Lqb;->q:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 15
    iget-object v1, v0, Lnb;->o:Lqb;

    if-ne p0, v1, :cond_0

    iget-object v1, v0, Lnb;->p:LXa;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1, p1}, LXa;->a(I)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v0, Lnb;->q:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 18
    iget-object v0, v0, Lnb;->q:Ljava/util/Map;

    iget-object v1, p0, Lqb;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXa;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0, p1}, LXa;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lbb;)Z
    .locals 8

    if-eqz p1, :cond_3

    .line 1
    invoke-static {}, Lrb;->e()V

    .line 2
    iget-object v0, p0, Lqb;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lbb;->a()V

    .line 4
    iget-object v2, p1, Lbb;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 6
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    .line 7
    iget-object v7, p1, Lbb;->b:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Lrb;->e()V

    .line 10
    iget-object v0, p0, Lqb;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    iget-object v3, p0, Lqb;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "category must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LSa;)I
    .locals 5

    .line 14
    iput-object p1, p0, Lqb;->u:LSa;

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 15
    iget-object v1, p0, Lqb;->d:Ljava/lang/String;

    invoke-virtual {p1}, LSa;->i()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    invoke-virtual {p1}, LSa;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lqb;->d:Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    iget-object v2, p0, Lqb;->e:Ljava/lang/String;

    invoke-virtual {p1}, LSa;->c()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 20
    invoke-virtual {p1}, LSa;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lqb;->e:Ljava/lang/String;

    or-int/lit8 v1, v1, 0x1

    .line 21
    :cond_1
    iget-object v2, p0, Lqb;->f:Landroid/net/Uri;

    invoke-virtual {p1}, LSa;->g()Landroid/net/Uri;

    move-result-object v3

    .line 22
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 23
    invoke-virtual {p1}, LSa;->g()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lqb;->f:Landroid/net/Uri;

    or-int/lit8 v1, v1, 0x1

    .line 24
    :cond_2
    iget-boolean v2, p0, Lqb;->g:Z

    invoke-virtual {p1}, LSa;->q()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 25
    invoke-virtual {p1}, LSa;->q()Z

    move-result v2

    iput-boolean v2, p0, Lqb;->g:Z

    or-int/lit8 v1, v1, 0x1

    .line 26
    :cond_3
    iget-boolean v2, p0, Lqb;->h:Z

    invoke-virtual {p1}, LSa;->p()Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 27
    invoke-virtual {p1}, LSa;->p()Z

    move-result v2

    iput-boolean v2, p0, Lqb;->h:Z

    or-int/lit8 v1, v1, 0x1

    .line 28
    :cond_4
    iget v2, p0, Lqb;->i:I

    invoke-virtual {p1}, LSa;->b()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 29
    invoke-virtual {p1}, LSa;->b()I

    move-result v2

    iput v2, p0, Lqb;->i:I

    or-int/lit8 v1, v1, 0x1

    .line 30
    :cond_5
    iget-object v2, p0, Lqb;->k:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1}, LSa;->a()V

    .line 32
    iget-object v3, p1, LSa;->b:Ljava/util/List;

    .line 33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 34
    iget-object v2, p0, Lqb;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 35
    iget-object v2, p0, Lqb;->k:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1}, LSa;->a()V

    .line 37
    iget-object v3, p1, LSa;->b:Ljava/util/List;

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    or-int/lit8 v1, v1, 0x1

    .line 39
    :cond_6
    iget v2, p0, Lqb;->l:I

    invoke-virtual {p1}, LSa;->k()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 40
    invoke-virtual {p1}, LSa;->k()I

    move-result v2

    iput v2, p0, Lqb;->l:I

    or-int/lit8 v1, v1, 0x1

    .line 41
    :cond_7
    iget v2, p0, Lqb;->m:I

    invoke-virtual {p1}, LSa;->j()I

    move-result v3

    if-eq v2, v3, :cond_8

    .line 42
    invoke-virtual {p1}, LSa;->j()I

    move-result v2

    iput v2, p0, Lqb;->m:I

    or-int/lit8 v1, v1, 0x1

    .line 43
    :cond_8
    iget v2, p0, Lqb;->n:I

    invoke-virtual {p1}, LSa;->d()I

    move-result v3

    if-eq v2, v3, :cond_9

    .line 44
    invoke-virtual {p1}, LSa;->d()I

    move-result v2

    iput v2, p0, Lqb;->n:I

    or-int/lit8 v1, v1, 0x1

    .line 45
    :cond_9
    iget v2, p0, Lqb;->o:I

    invoke-virtual {p1}, LSa;->n()I

    move-result v3

    if-eq v2, v3, :cond_a

    .line 46
    invoke-virtual {p1}, LSa;->n()I

    move-result v2

    iput v2, p0, Lqb;->o:I

    or-int/lit8 v1, v1, 0x3

    .line 47
    :cond_a
    iget v2, p0, Lqb;->p:I

    invoke-virtual {p1}, LSa;->m()I

    move-result v3

    if-eq v2, v3, :cond_b

    .line 48
    invoke-virtual {p1}, LSa;->m()I

    move-result v2

    iput v2, p0, Lqb;->p:I

    or-int/lit8 v1, v1, 0x3

    .line 49
    :cond_b
    iget v2, p0, Lqb;->q:I

    invoke-virtual {p1}, LSa;->o()I

    move-result v3

    if-eq v2, v3, :cond_c

    .line 50
    invoke-virtual {p1}, LSa;->o()I

    move-result v2

    iput v2, p0, Lqb;->q:I

    or-int/lit8 v1, v1, 0x3

    .line 51
    :cond_c
    iget v2, p0, Lqb;->r:I

    invoke-virtual {p1}, LSa;->l()I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 52
    invoke-virtual {p1}, LSa;->l()I

    move-result v2

    iput v2, p0, Lqb;->r:I

    or-int/lit8 v1, v1, 0x5

    .line 53
    :cond_d
    iget-object v2, p0, Lqb;->s:Landroid/os/Bundle;

    invoke-virtual {p1}, LSa;->e()Landroid/os/Bundle;

    move-result-object v3

    .line 54
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 55
    invoke-virtual {p1}, LSa;->e()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lqb;->s:Landroid/os/Bundle;

    or-int/lit8 v1, v1, 0x1

    .line 56
    :cond_e
    iget-object v2, p0, Lqb;->t:Landroid/content/IntentSender;

    .line 57
    iget-object v3, p1, LSa;->a:Landroid/os/Bundle;

    const-string v4, "settingsIntent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 58
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 59
    iget-object v2, p1, LSa;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    .line 60
    iput-object v2, p0, Lqb;->t:Landroid/content/IntentSender;

    or-int/lit8 v1, v1, 0x1

    .line 61
    :cond_f
    iget-boolean v2, p0, Lqb;->j:Z

    .line 62
    iget-object v3, p1, LSa;->a:Landroid/os/Bundle;

    const-string v4, "canDisconnect"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v2, v3, :cond_10

    .line 63
    iget-object p1, p1, LSa;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 64
    iput-boolean p1, p0, Lqb;->j:Z

    or-int/lit8 v0, v1, 0x5

    goto :goto_1

    :cond_10
    move v0, v1

    :cond_11
    :goto_1
    return v0
.end method

.method public b(I)V
    .locals 2

    .line 10
    invoke-static {}, Lrb;->e()V

    if-eqz p1, :cond_0

    .line 11
    sget-object v0, Lrb;->c:Lnb;

    .line 12
    iget-object v1, v0, Lnb;->o:Lqb;

    if-ne p0, v1, :cond_0

    iget-object v0, v0, Lnb;->p:LXa;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, LXa;->c(I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 4

    .line 1
    invoke-static {}, Lrb;->e()V

    .line 2
    sget-object v0, Lrb;->c:Lnb;

    invoke-virtual {v0}, Lnb;->b()Lqb;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget v0, p0, Lqb;->n:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lqb;->a()LYa;

    move-result-object v0

    .line 5
    iget-object v0, v0, LYa;->b:LWa;

    .line 6
    iget-object v0, v0, LWa;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android"

    .line 7
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 8
    invoke-virtual {p0, v0}, Lqb;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 9
    invoke-virtual {p0, v0}, Lqb;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqb;->u:LSa;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lqb;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-static {}, Lrb;->e()V

    .line 2
    sget-object v0, Lrb;->c:Lnb;

    invoke-virtual {v0}, Lnb;->c()Lqb;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lrb;->e()V

    .line 2
    sget-object v0, Lrb;->c:Lnb;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, p0, v1}, Lnb;->a(Lqb;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "MediaRouter.RouteInfo{ uniqueId="

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lqb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqb;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqb;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqb;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lqb;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lqb;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lqb;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canDisconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lqb;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playbackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lqb;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playbackStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lqb;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lqb;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volumeHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lqb;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lqb;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volumeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lqb;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", presentationDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lqb;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqb;->s:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", settingsIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqb;->t:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", providerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqb;->a:Lob;

    .line 2
    iget-object v1, v1, Lob;->c:LWa;

    .line 3
    iget-object v1, v1, LWa;->a:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
