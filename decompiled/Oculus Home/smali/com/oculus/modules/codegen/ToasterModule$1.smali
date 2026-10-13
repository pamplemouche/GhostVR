.class Lcom/oculus/modules/codegen/ToasterModule$1;
.super Ljava/lang/Object;
.source "ToasterModule.java"

# interfaces
.implements Lcom/oculus/modules/codegen/Resolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/codegen/ToasterModule;->createToast(DLorg/json/JSONObject;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/modules/codegen/Resolver",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/codegen/ToasterModule;

.field final synthetic val$rejectID:I

.field final synthetic val$resolveID:I


# direct methods
.method constructor <init>(Lcom/oculus/modules/codegen/ToasterModule;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/codegen/ToasterModule;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oculus/modules/codegen/ToasterModule$1;->this$0:Lcom/oculus/modules/codegen/ToasterModule;

    iput p2, p0, Lcom/oculus/modules/codegen/ToasterModule$1;->val$resolveID:I

    iput p3, p0, Lcom/oculus/modules/codegen/ToasterModule$1;->val$rejectID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reject(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v1, "promiseObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 54
    .local v0, "promiseArgs":Lorg/json/JSONArray;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    iget-object v2, p0, Lcom/oculus/modules/codegen/ToasterModule$1;->this$0:Lcom/oculus/modules/codegen/ToasterModule;

    iget-wide v2, v2, Lcom/oculus/modules/codegen/ToasterModule;->RVRCtxTag:J

    iget v4, p0, Lcom/oculus/modules/codegen/ToasterModule$1;->val$rejectID:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/oculus/modules/codegen/ToasterModule;->access$000(JILjava/lang/String;)V

    .line 56
    return-void

    .line 52
    .end local v0    # "promiseArgs":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic resolve(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/modules/codegen/ToasterModule$1;->resolve(Ljava/lang/Void;)V

    return-void
.end method

.method public resolve(Ljava/lang/Void;)V
    .locals 5
    .param p1, "resolution"    # Ljava/lang/Void;

    .prologue
    .line 45
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 46
    .local v0, "promiseArgs":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/oculus/modules/codegen/ToasterModule$1;->this$0:Lcom/oculus/modules/codegen/ToasterModule;

    iget-wide v2, v1, Lcom/oculus/modules/codegen/ToasterModule;->RVRCtxTag:J

    iget v1, p0, Lcom/oculus/modules/codegen/ToasterModule$1;->val$resolveID:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/oculus/modules/codegen/ToasterModule;->access$000(JILjava/lang/String;)V

    .line 47
    return-void
.end method
