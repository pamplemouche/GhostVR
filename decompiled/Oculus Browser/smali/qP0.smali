.class public LqP0;
.super LH10;
.source "PG"


# instance fields
.field public e:LwP0;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LH10;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;LRS0;LKR0;)I
    .locals 2

    .line 1
    invoke-static {}, LqU;->a()LqU;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-static {}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p1}, LqU;->close()V

    .line 4
    sget-object p1, LFP0;->a:Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    if-eqz p1, :cond_5

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p1, p1, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LwP0;

    .line 8
    invoke-virtual {v0}, LwP0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, LwP0;->d()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v1, v0}, LYT;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 14
    sget-object p3, LFP0;->a:Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    .line 15
    invoke-virtual {p3, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->a(Ljava/lang/String;)LwP0;

    move-result-object p1

    .line 16
    iget-object p3, p1, LwP0;->a:Ljava/lang/String;

    .line 17
    invoke-static {p3}, LsP0;->d(Ljava/lang/String;)Ljava/lang/ref/WeakReference;

    .line 18
    iput-object p1, p0, LqP0;->e:LwP0;

    .line 19
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    if-le p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, LqP0;->f:Z

    return p2

    .line 20
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    :cond_4
    return v0

    :cond_5
    const/4 p1, 0x0

    .line 21
    throw p1

    :catchall_0
    move-exception p2

    .line 22
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    .line 23
    :try_start_2
    invoke-virtual {p1}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 24
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p2, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 25
    :goto_2
    throw p3
.end method

.method public b(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/content/Context;LRS0;LKR0;)V
    .locals 2

    .line 1
    iget-object p1, p0, LqP0;->e:LwP0;

    new-instance p2, LpP0;

    invoke-direct {p2, p0, p3}, LpP0;-><init>(LqP0;LKR0;)V

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "WebApkUpdateManager"

    const-string v1, "Update now"

    .line 2
    invoke-static {v0, v1, p3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance p3, LoP0;

    invoke-direct {p3, p1, p2}, LoP0;-><init>(LwP0;Ljava/lang/Runnable;)V

    const/4 p2, 0x4

    const/4 v0, 0x3

    const-string v1, "WebApk.Update.RequestSent"

    .line 4
    invoke-static {v1, v0, p2}, LfV;->a(Ljava/lang/String;II)V

    .line 5
    invoke-virtual {p1}, LwP0;->c()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1, p3}, LJ/N;->MEqkTChv(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
