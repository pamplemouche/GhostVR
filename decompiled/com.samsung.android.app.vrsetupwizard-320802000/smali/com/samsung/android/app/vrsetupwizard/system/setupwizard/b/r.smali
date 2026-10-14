.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;
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

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/g;Ld/av;)V
    .locals 1
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

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

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

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

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

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "response failure"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {}, La/c/b/j;->a()V

    :cond_4
    invoke-interface {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;->a()V

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    if-nez p1, :cond_6

    invoke-static {}, La/c/b/j;->a()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->b:Ljava/util/ArrayList;

    invoke-static {p2, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " data set fail"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {}, La/c/b/j;->a()V

    :cond_7
    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;->a()V

    :cond_8
    return-void

    :cond_9
    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p2

    if-nez p2, :cond_a

    invoke-static {}, La/c/b/j;->a()V

    :cond_a
    invoke-interface {p2, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;->a(Ljava/util/ArrayList;)V

    :cond_b
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

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/r;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, La/c/b/j;->a()V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;->a()V

    :cond_1
    return-void
.end method
