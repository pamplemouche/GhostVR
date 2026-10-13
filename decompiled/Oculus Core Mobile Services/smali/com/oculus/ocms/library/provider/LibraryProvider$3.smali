.class Lcom/oculus/ocms/library/provider/LibraryProvider$3;
.super Ljava/lang/Object;
.source "LibraryProvider.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/ocms/library/provider/LibraryProvider;->uninstall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/oculus/appmanager/info/model/InstallerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/ocms/library/provider/LibraryProvider;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/ocms/library/provider/LibraryProvider;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$3;->this$0:Lcom/oculus/ocms/library/provider/LibraryProvider;

    iput-object p2, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$3;->val$resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$3;->this$0:Lcom/oculus/ocms/library/provider/LibraryProvider;

    iget-object v1, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$3;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$3;->val$resultReceiver:Landroid/os/ResultReceiver;

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/ocms/library/provider/LibraryProvider;->access$100(Lcom/oculus/ocms/library/provider/LibraryProvider;Ljava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResult;Landroid/os/ResultReceiver;)V

    .line 294
    return-void
.end method

.method public onSuccess(Lcom/oculus/appmanager/info/model/InstallerResult;)V
    .locals 3
    .param p1    # Lcom/oculus/appmanager/info/model/InstallerResult;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 288
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$3;->this$0:Lcom/oculus/ocms/library/provider/LibraryProvider;

    iget-object v1, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$3;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$3;->val$resultReceiver:Landroid/os/ResultReceiver;

    invoke-static {v0, v1, p1, v2}, Lcom/oculus/ocms/library/provider/LibraryProvider;->access$100(Lcom/oculus/ocms/library/provider/LibraryProvider;Ljava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResult;Landroid/os/ResultReceiver;)V

    .line 289
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 285
    check-cast p1, Lcom/oculus/appmanager/info/model/InstallerResult;

    invoke-virtual {p0, p1}, Lcom/oculus/ocms/library/provider/LibraryProvider$3;->onSuccess(Lcom/oculus/appmanager/info/model/InstallerResult;)V

    return-void
.end method
