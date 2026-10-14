.class Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/z;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/z;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/z;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/z;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[MccTransaction] MCC from ODC : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/z;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/z;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;)I

    move-result p1

    if-gez p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->c:Ljava/lang/String;

    const-string v0, "CHN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/z;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    const/16 v0, 0x1cc

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/z;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    const/16 v0, 0x1c2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/z;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;)I

    move-result v0

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;I)V

    return-void
.end method
