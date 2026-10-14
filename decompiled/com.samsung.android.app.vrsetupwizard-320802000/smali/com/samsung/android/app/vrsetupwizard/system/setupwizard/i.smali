.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->a()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

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

    const/16 v2, 0xf0

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
