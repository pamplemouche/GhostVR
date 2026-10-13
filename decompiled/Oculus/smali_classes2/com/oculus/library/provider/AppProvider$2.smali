.class Lcom/oculus/library/provider/AppProvider$2;
.super Ljava/lang/Object;
.source "AppProvider.java"

# interfaces
.implements Lcom/oculus/library/model/InstallerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/provider/AppProvider;->getInstallCallbackReceiver(Landroid/os/Bundle;)Lcom/oculus/library/model/InstallerCallbackReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/library/provider/AppProvider;

.field final synthetic val$resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/library/provider/AppProvider;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/oculus/library/provider/AppProvider$2;->this$0:Lcom/oculus/library/provider/AppProvider;

    iput-object p2, p0, Lcom/oculus/library/provider/AppProvider$2;->val$resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallerResult(Lcom/oculus/appmanager/info/model/InstallerResult;)V
    .locals 3

    .prologue
    .line 317
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 318
    const-string v1, "EXTRA_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 320
    iget-object v1, p0, Lcom/oculus/library/provider/AppProvider$2;->val$resultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 321
    return-void
.end method
