.class Lcom/oculus/library/model/InstallCallbackReceiver$1;
.super Landroid/os/ResultReceiver;
.source "InstallCallbackReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/model/InstallCallbackReceiver;-><init>(Lcom/oculus/library/model/InstallCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/library/model/InstallCallbackReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/library/model/InstallCallbackReceiver;Landroid/os/Handler;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/oculus/library/model/InstallCallbackReceiver$1;->this$0:Lcom/oculus/library/model/InstallCallbackReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 25
    const-class p1, Lcom/oculus/appmanager/info/model/InstallResult;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p1, "EXTRA_RESULT"

    .line 26
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oculus/appmanager/info/model/InstallResult;

    .line 27
    iget-object p2, p0, Lcom/oculus/library/model/InstallCallbackReceiver$1;->this$0:Lcom/oculus/library/model/InstallCallbackReceiver;

    invoke-static {p2}, Lcom/oculus/library/model/InstallCallbackReceiver;->access$000(Lcom/oculus/library/model/InstallCallbackReceiver;)Lcom/oculus/library/model/InstallCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/oculus/library/model/InstallCallback;->onInstallResult(Lcom/oculus/appmanager/info/model/InstallResult;)V

    return-void
.end method
