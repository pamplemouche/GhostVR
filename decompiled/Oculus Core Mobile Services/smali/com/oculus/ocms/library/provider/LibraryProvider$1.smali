.class Lcom/oculus/ocms/library/provider/LibraryProvider$1;
.super Ljava/lang/Object;
.source "LibraryProvider.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/ocms/library/provider/LibraryProvider;->install(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lcom/oculus/appmanager/info/model/InstallerResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/ocms/library/provider/LibraryProvider;

.field final synthetic val$callback:Landroid/os/ResultReceiver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/ocms/library/provider/LibraryProvider;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$1;->this$0:Lcom/oculus/ocms/library/provider/LibraryProvider;

    iput-object p2, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$1;->val$callback:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/oculus/ocms/library/provider/LibraryProvider$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/appmanager/info/model/InstallerResult;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$1;->this$0:Lcom/oculus/ocms/library/provider/LibraryProvider;

    iget-object v1, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$1;->val$callback:Landroid/os/ResultReceiver;

    invoke-static {v0, p1, v1, v2}, Lcom/oculus/ocms/library/provider/LibraryProvider;->access$000(Lcom/oculus/ocms/library/provider/LibraryProvider;Lbolts/Task;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 212
    const/4 v0, 0x0

    return-object v0
.end method
