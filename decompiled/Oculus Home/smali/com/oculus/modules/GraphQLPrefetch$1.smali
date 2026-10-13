.class Lcom/oculus/modules/GraphQLPrefetch$1;
.super Ljava/lang/Object;
.source "GraphQLPrefetch.java"

# interfaces
.implements Lcom/oculus/panellib/GraphQLUtil$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/GraphQLPrefetch;->fetchQueries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/GraphQLPrefetch;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$variables:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/modules/GraphQLPrefetch;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/GraphQLPrefetch;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->this$0:Lcom/oculus/modules/GraphQLPrefetch;

    iput-object p2, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->val$variables:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 5
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {}, Lcom/oculus/modules/GraphQLPrefetch;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed prefetch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->this$0:Lcom/oculus/modules/GraphQLPrefetch;

    iget-object v2, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->val$variables:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/oculus/modules/GraphQLPrefetch;->access$100(Lcom/oculus/modules/GraphQLPrefetch;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->this$0:Lcom/oculus/modules/GraphQLPrefetch;

    invoke-static {v1}, Lcom/oculus/modules/GraphQLPrefetch;->access$200(Lcom/oculus/modules/GraphQLPrefetch;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 152
    invoke-static {}, Lcom/oculus/modules/GraphQLPrefetch;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->this$0:Lcom/oculus/modules/GraphQLPrefetch;

    iget-object v2, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->val$variables:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/oculus/modules/GraphQLPrefetch;->access$100(Lcom/oculus/modules/GraphQLPrefetch;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "data":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->this$0:Lcom/oculus/modules/GraphQLPrefetch;

    iget-object v2, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->val$variables:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/oculus/modules/GraphQLPrefetch;->access$100(Lcom/oculus/modules/GraphQLPrefetch;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->this$0:Lcom/oculus/modules/GraphQLPrefetch;

    invoke-static {v1}, Lcom/oculus/modules/GraphQLPrefetch;->access$200(Lcom/oculus/modules/GraphQLPrefetch;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, p0, Lcom/oculus/modules/GraphQLPrefetch$1;->this$0:Lcom/oculus/modules/GraphQLPrefetch;

    invoke-virtual {v1}, Lcom/oculus/modules/GraphQLPrefetch;->tryPushPrefetchResponses()V

    .line 163
    return-void
.end method
