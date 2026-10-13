.class Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection$1;
.super Ljava/lang/Object;
.source "OculusUserManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;


# direct methods
.method constructor <init>(Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection$1;->this$1:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oculus/userserver/api/OculusUserManager;->access$400(Landroid/os/RemoteException;)V

    .line 69
    return-void
.end method
