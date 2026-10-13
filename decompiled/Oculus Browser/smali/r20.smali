.class public final synthetic Lr20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LQi;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr20;->a:Ljava/lang/String;

    iput p2, p0, Lr20;->b:I

    return-void
.end method


# virtual methods
.method public a(LUi;)V
    .locals 4

    iget-object v0, p0, Lr20;->a:Ljava/lang/String;

    iget v1, p0, Lr20;->b:I

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.support.customtabs.trusted.PLATFORM_TAG"

    .line 2
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.support.customtabs.trusted.PLATFORM_ID"

    .line 3
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object p1, p1, LUi;->a:LI;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, LG;

    :try_start_1
    invoke-virtual {p1, v2}, LG;->f(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteException while trying to communicate with the TrustedWebActivityService, this is probably because the service died while attempting to respond. Check to see if the service crashed for some reason."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
