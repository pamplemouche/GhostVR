.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/k;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;

    const/16 v2, 0xd2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageItemDataArrayList"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onFinishCheckSamsungPackages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    if-eqz v3, :cond_0

    const-string v2, "1"

    const-string v4, "0"

    const-string v5, "2"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/a/h;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

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

    const/16 v1, 0xd3

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;->a(ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/g;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_6

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->d(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->e(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;->a(Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->f(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->g(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V

    :cond_b
    :goto_6
    return-void
.end method
