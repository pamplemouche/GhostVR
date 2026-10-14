.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Ld/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/j<",
        "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

.field final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/g;Ld/av;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/g<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/t;",
            ">;",
            "Ld/av<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ld/av;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Ld/av;->a()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "response failure"

    if-nez p1, :cond_2

    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, La/c/b/j;->a()V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;->a()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Ld/av;->b()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, La/c/b/j;->a()V

    :cond_3
    check-cast p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/t;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/t;->a()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {}, La/c/b/j;->a()V

    :cond_4
    invoke-interface {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;->a()V

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    if-nez p1, :cond_6

    invoke-static {}, La/c/b/j;->a()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->b:Ljava/util/ArrayList;

    invoke-static {p2, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_8

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " data set fail"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {}, La/c/b/j;->a()V

    :cond_7
    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;->a()V

    return-void

    :cond_8
    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    if-nez p1, :cond_9

    invoke-static {}, La/c/b/j;->a()V

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;Ljava/util/ArrayList;ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {}, La/c/b/j;->a()V

    :cond_a
    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;->a()V

    :cond_b
    :goto_0
    return-void
.end method

.method public a(Ld/g;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/g<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/t;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/s;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, La/c/b/j;->a()V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;->a()V

    :cond_1
    return-void
.end method
