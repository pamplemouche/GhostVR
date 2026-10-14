.class public abstract Lcom/sec/android/diagmonagent/log/provider/g;
.super Lcom/sec/android/diagmonagent/log/provider/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/f;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private b(Ljava/util/List;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private m()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public a(Lcom/sec/android/diagmonagent/log/provider/a;)V
    .locals 3

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/a;->f()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/diagmonagent/log/provider/g;->b(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "authorityList"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceName"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/a;->a()Z

    move-result v1

    const-string v2, "agreed"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/a;->c()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    const-string v1, "logList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/g;->c()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    const-string v1, "plainLogList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/g;->g()V

    const-string v0, "get"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "registered"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/g;->m()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/provider/f;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/h;->a:Lcom/sec/android/diagmonagent/log/provider/h;

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j()Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/h;->a:Lcom/sec/android/diagmonagent/log/provider/h;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/h;->c(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()Z
    .locals 4

    invoke-super {p0}, Lcom/sec/android/diagmonagent/log/provider/f;->onCreate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    const-string v2, "registered"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    const-string v2, "pushRegistered"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "tryRegistering"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    const-string v2, "nonce"

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/g;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/diagmonagent/log/provider/g;->b(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "authorityList"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/g;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "serviceName"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/g;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceId"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/g;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "deviceInfo"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/g;->k()Z

    move-result v2

    const-string v3, "uploadWifionly"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/g;->l()Z

    move-result v2

    const-string v3, "supportPush"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    const-string v3, "logList"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/g;->a(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/g;->b:Landroid/os/Bundle;

    const-string v3, "plainLogList"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return v1
.end method
