.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;
.super Landroid/content/BroadcastReceiver;


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

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, La/c/b/j;->a()V

    :cond_0
    const-string v0, "intent.data!!"

    invoke-static {p2, v0}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onReceiver:PackageAdded() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_4

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;

    const-string v4, "packageName"

    invoke-static {p2, v4}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;->a_(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l()Lcom/samsung/android/app/vrsetupwizard/common/c/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    goto :goto_3

    :cond_7
    move-object p2, v2

    :goto_3
    check-cast p2, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    if-eqz p2, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;

    invoke-interface {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;->c_()V

    goto :goto_4

    :cond_9
    return-void
.end method
