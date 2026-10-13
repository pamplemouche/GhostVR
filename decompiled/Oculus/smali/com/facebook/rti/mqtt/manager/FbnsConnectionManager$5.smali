.class Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$5;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->syncSubscriptionTopics(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

.field final synthetic val$topicsDiff:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$5;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$5;->val$topicsDiff:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1097
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$5;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$5;->val$topicsDiff:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->subscribeInternal(Ljava/util/List;)Z

    .line 1098
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$5;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$5;->val$topicsDiff:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->unsubscribeInternal(Ljava/util/List;)Z

    .line 1099
    return-void
.end method
