.class Lcom/oculus/library/legacy/LegacyUtils$1;
.super Ljava/lang/Object;
.source "LegacyUtils.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/legacy/LegacyUtils;->performCustomInstall(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/InstallerCallbackReceiver;Lcom/oculus/appmanager/info/model/RequestOrigin;)V
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
.field final synthetic this$0:Lcom/oculus/library/legacy/LegacyUtils;

.field final synthetic val$callback:Lcom/oculus/library/model/InstallerCallbackReceiver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/library/legacy/LegacyUtils;Ljava/lang/String;Lcom/oculus/library/model/InstallerCallbackReceiver;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/oculus/library/legacy/LegacyUtils$1;->this$0:Lcom/oculus/library/legacy/LegacyUtils;

    iput-object p2, p0, Lcom/oculus/library/legacy/LegacyUtils$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/library/legacy/LegacyUtils$1;->val$callback:Lcom/oculus/library/model/InstallerCallbackReceiver;

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
    .line 93
    invoke-virtual {p0, p1}, Lcom/oculus/library/legacy/LegacyUtils$1;->then(Lbolts/Task;)Ljava/lang/Void;

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
    .line 96
    iget-object v0, p0, Lcom/oculus/library/legacy/LegacyUtils$1;->this$0:Lcom/oculus/library/legacy/LegacyUtils;

    iget-object v1, p0, Lcom/oculus/library/legacy/LegacyUtils$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/library/legacy/LegacyUtils$1;->val$callback:Lcom/oculus/library/model/InstallerCallbackReceiver;

    invoke-static {v0, p1, v1, v2}, Lcom/oculus/library/legacy/LegacyUtils;->access$000(Lcom/oculus/library/legacy/LegacyUtils;Lbolts/Task;Ljava/lang/String;Lcom/oculus/library/model/InstallerCallbackReceiver;)V

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method
