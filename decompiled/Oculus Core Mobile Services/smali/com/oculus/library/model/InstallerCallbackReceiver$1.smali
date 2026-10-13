.class Lcom/oculus/library/model/InstallerCallbackReceiver$1;
.super Landroid/os/ResultReceiver;
.source "InstallerCallbackReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/model/InstallerCallbackReceiver;-><init>(Lcom/oculus/library/model/InstallerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/library/model/InstallerCallbackReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/library/model/InstallerCallbackReceiver;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/oculus/library/model/InstallerCallbackReceiver$1;->this$0:Lcom/oculus/library/model/InstallerCallbackReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/oculus/appmanager/info/model/InstallerResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 26
    const-string v0, "EXTRA_RESULT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/info/model/InstallerResult;

    .line 27
    iget-object v1, p0, Lcom/oculus/library/model/InstallerCallbackReceiver$1;->this$0:Lcom/oculus/library/model/InstallerCallbackReceiver;

    invoke-static {v1}, Lcom/oculus/library/model/InstallerCallbackReceiver;->access$000(Lcom/oculus/library/model/InstallerCallbackReceiver;)Lcom/oculus/library/model/InstallerCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oculus/library/model/InstallerCallback;->onInstallerResult(Lcom/oculus/appmanager/info/model/InstallerResult;)V

    .line 28
    return-void
.end method
