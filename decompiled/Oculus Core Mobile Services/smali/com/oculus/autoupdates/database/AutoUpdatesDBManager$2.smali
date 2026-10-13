.class Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$2;
.super Ljava/lang/Object;
.source "AutoUpdatesDBManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;->scheduleUpdateRecord(Lcom/oculus/autoupdates/database/AutoUpdateRecord;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;

.field final synthetic val$autoUpdateRecord:Lcom/oculus/autoupdates/database/AutoUpdateRecord;


# direct methods
.method constructor <init>(Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;Lcom/oculus/autoupdates/database/AutoUpdateRecord;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$2;->this$0:Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;

    iput-object p2, p0, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$2;->val$autoUpdateRecord:Lcom/oculus/autoupdates/database/AutoUpdateRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$2;->this$0:Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;

    iget-object v1, p0, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$2;->val$autoUpdateRecord:Lcom/oculus/autoupdates/database/AutoUpdateRecord;

    invoke-virtual {v0, v1}, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;->updateRecord(Lcom/oculus/autoupdates/database/AutoUpdateRecord;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$2;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
