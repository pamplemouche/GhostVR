.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/m;
.super Lcom/a/a/a/b;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/m;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    invoke-direct {p0}, Lcom/a/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZLandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "resultData"

    invoke-static {p3, p1}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "access token :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "access_token"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "auth url  :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "auth_server_url"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, La/c/b/j;->a()V

    :cond_0
    sput-object p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, La/c/b/j;->a()V

    :cond_1
    sput-object p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->b:Ljava/lang/String;

    const-string p1, "cc"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "FAIL"

    :goto_0
    sput-object p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->c:Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->a:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    sget-object p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    sget-object p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/m;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->b()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;->b(Z)V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/m;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->b()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1, p3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;->b(Z)V

    :cond_7
    :goto_4
    return-void
.end method

.method public b(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "resultData"

    invoke-static {p3, p1}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "resultData"

    invoke-static {p3, p1}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "resultData"

    invoke-static {p3, p1}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "resultData"

    invoke-static {p3, p1}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "resultData"

    invoke-static {p3, p1}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
