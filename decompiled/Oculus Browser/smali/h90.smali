.class public Lh90;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:LWT;

.field public c:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Le90;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lh90;->a:Ljava/util/List;

    .line 3
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, Lh90;->b:LWT;

    .line 4
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    .line 5
    iput-object p1, p0, Lh90;->c:Landroid/content/SharedPreferences;

    const-string v0, "PendingDownloadNotifications"

    .line 6
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Lh90;->c:Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Ld90;->b(Ljava/lang/String;)Ld90;

    move-result-object v1

    .line 10
    iget v1, v1, Ld90;->a:I

    if-lez v1, :cond_1

    .line 11
    iget-object v1, p0, Lh90;->a:Ljava/util/List;

    .line 12
    invoke-static {v0}, Ld90;->b(Ljava/lang/String;)Ld90;

    move-result-object v0

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(LbU0;)Ld90;
    .locals 2

    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lh90;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 13
    iget-object v1, p0, Lh90;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld90;

    iget-object v1, v1, Ld90;->f:LbU0;

    invoke-virtual {v1, p1}, LbU0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    iget-object p1, p0, Lh90;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld90;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ld90;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lh90;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld90;

    .line 5
    iget-object v2, v1, Ld90;->f:LbU0;

    iget-object v3, p1, Ld90;->f:LbU0;

    invoke-virtual {v2, v3}, LbU0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Ld90;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 8
    :cond_2
    iget-object v0, p0, Lh90;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, p2}, Lh90;->a(Z)V

    .line 10
    iget-object p2, p0, Lh90;->b:LWT;

    invoke-virtual {p2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg90;

    .line 11
    iget-object v1, p1, Ld90;->f:LbU0;

    invoke-interface {v0, v1}, Lg90;->a(LbU0;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 8

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lh90;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 17
    iget-object v2, p0, Lh90;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld90;

    if-eqz v2, :cond_4

    const-string v3, "6,"

    .line 18
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Ld90;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Ld90;->f:LbU0;

    iget-object v5, v5, LbU0;->a:Ljava/lang/String;

    invoke-static {v3, v5, v4}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Ld90;->f:LbU0;

    iget-object v5, v5, LbU0;->b:Ljava/lang/String;

    invoke-static {v3, v5, v4}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v2, Ld90;->b:Z

    const-string v6, "1"

    const-string v7, "0"

    if-eqz v5, :cond_0

    move-object v5, v6

    goto :goto_1

    :cond_0
    move-object v5, v7

    :goto_1
    invoke-static {v3, v5, v4}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v2, Ld90;->c:Z

    if-eqz v5, :cond_1

    move-object v5, v6

    goto :goto_2

    :cond_1
    move-object v5, v7

    :goto_2
    invoke-static {v3, v5, v4}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v2, Ld90;->e:Z

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_3

    :cond_2
    move-object v5, v7

    :goto_3
    invoke-static {v3, v5, v4}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v2, Ld90;->g:Z

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    move-object v6, v7

    :goto_4
    invoke-static {v3, v6, v4}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Ld90;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 27
    throw p1

    .line 28
    :cond_5
    iget-object v1, p0, Lh90;->c:Landroid/content/SharedPreferences;

    const-string v2, "PendingDownloadNotifications"

    invoke-static {v1, v2, v0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method

.method public b(LbU0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh90;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld90;

    .line 5
    iget-object v1, v1, Ld90;->f:LbU0;

    invoke-virtual {v1, p1}, LbU0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, v2}, Lh90;->a(Z)V

    :cond_2
    return-void
.end method
