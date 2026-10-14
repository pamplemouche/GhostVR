.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V
    .locals 5

    const-string v0, "downloadRequest"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onDownloadComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->h()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->c()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->e(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l()Lcom/samsung/android/app/vrsetupwizard/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(J)V

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(I)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->k()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;->a(Ljava/lang/String;J)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;Lcom/samsung/android/app/vrsetupwizard/common/b/g;)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->h(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V
    .locals 2

    const-string v0, "downloadRequest"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorMessage"

    invoke-static {p3, p1}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onDownloadFailed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;

    const/16 v0, 0x3f0

    const-string v1, ""

    if-ne p2, v0, :cond_0

    const/16 v0, 0xe6

    goto :goto_1

    :cond_0
    const/16 v0, 0xdc

    :goto_1
    invoke-interface {p3, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->a()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;JJI)V
    .locals 0

    const-string p2, "downloadRequest"

    invoke-static {p1, p2}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;

    invoke-interface {p2, p4, p5}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;->a(J)V

    goto :goto_0

    :cond_0
    return-void
.end method
