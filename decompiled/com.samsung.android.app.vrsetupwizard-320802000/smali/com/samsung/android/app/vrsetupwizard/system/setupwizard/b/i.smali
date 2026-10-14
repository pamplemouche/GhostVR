.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Ld/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/j<",
        "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

.field final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;->b:Ljava/util/ArrayList;

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
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ac;",
            ">;",
            "Ld/av<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ac;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[OculusInfoCheck] onResponse : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Ld/av;->a()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, La/c/b/j;->a()V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;->a()V

    return-void

    :cond_1
    invoke-virtual {p2}, Ld/av;->b()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, La/c/b/j;->a()V

    :cond_2
    check-cast p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ac;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ac;->a()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "response failure"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {}, La/c/b/j;->a()V

    :cond_3
    invoke-interface {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;->a()V

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    if-nez p1, :cond_5

    invoke-static {}, La/c/b/j;->a()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;->b:Ljava/util/ArrayList;

    invoke-static {p2, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, La/c/b/j;->a()V

    :cond_6
    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;->a()V

    return-void

    :cond_7
    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;

    move-result-object p2

    if-nez p2, :cond_8

    invoke-static {}, La/c/b/j;->a()V

    :cond_8
    invoke-interface {p2, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ld/g;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/g<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ac;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, La/c/b/j;->a()V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;->a()V

    return-void
.end method
