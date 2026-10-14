.class Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/j;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/j;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    iput p3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/j;->b:I

    iput-object p4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/j;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->e()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/j;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->e()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/j;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/j;->b:I

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/j;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
