.class Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$7;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->errorReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$7;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$7;->val$category:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$7;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$7;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$7;->this$1:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$100(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$7;->val$category:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$7;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$CallbackHandler$7;->val$t:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;->errorReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1534
    return-void
.end method
