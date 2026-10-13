.class Lcom/oculus/library/model/UninstallCallbackReceiver$1;
.super Landroid/os/ResultReceiver;
.source "UninstallCallbackReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/model/UninstallCallbackReceiver;-><init>(Lcom/oculus/library/model/UninstallCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/library/model/UninstallCallbackReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/library/model/UninstallCallbackReceiver;Landroid/os/Handler;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/oculus/library/model/UninstallCallbackReceiver$1;->this$0:Lcom/oculus/library/model/UninstallCallbackReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 26
    const-class p1, Lcom/oculus/appmanager/info/model/InstallResult;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p1, "EXTRA_RESULT"

    .line 27
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oculus/appmanager/info/model/UninstallResult;

    .line 28
    iget-object p2, p0, Lcom/oculus/library/model/UninstallCallbackReceiver$1;->this$0:Lcom/oculus/library/model/UninstallCallbackReceiver;

    invoke-static {p2}, Lcom/oculus/library/model/UninstallCallbackReceiver;->access$000(Lcom/oculus/library/model/UninstallCallbackReceiver;)Lcom/oculus/library/model/UninstallCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/oculus/library/model/UninstallCallback;->onUninstallResult(Lcom/oculus/appmanager/info/model/UninstallResult;)V

    return-void
.end method
