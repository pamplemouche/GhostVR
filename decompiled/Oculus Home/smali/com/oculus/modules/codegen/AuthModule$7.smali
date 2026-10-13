.class Lcom/oculus/modules/codegen/AuthModule$7;
.super Ljava/lang/Object;
.source "AuthModule.java"

# interfaces
.implements Lcom/oculus/modules/codegen/Resolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/codegen/AuthModule;->loginWithFbAuth(Ljava/lang/String;II)V
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
        "Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/codegen/AuthModule;

.field final synthetic val$rejectID:I

.field final synthetic val$resolveID:I


# direct methods
.method constructor <init>(Lcom/oculus/modules/codegen/AuthModule;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/codegen/AuthModule;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/oculus/modules/codegen/AuthModule$7;->this$0:Lcom/oculus/modules/codegen/AuthModule;

    iput p2, p0, Lcom/oculus/modules/codegen/AuthModule$7;->val$resolveID:I

    iput p3, p0, Lcom/oculus/modules/codegen/AuthModule$7;->val$rejectID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reject(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 198
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 200
    .local v1, "promiseObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 203
    .local v0, "promiseArgs":Lorg/json/JSONArray;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 204
    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$7;->this$0:Lcom/oculus/modules/codegen/AuthModule;

    iget-wide v2, v2, Lcom/oculus/modules/codegen/AuthModule;->RVRCtxTag:J

    iget v4, p0, Lcom/oculus/modules/codegen/AuthModule$7;->val$rejectID:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/oculus/modules/codegen/AuthModule;->access$000(JILjava/lang/String;)V

    .line 205
    return-void

    .line 201
    .end local v0    # "promiseArgs":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public resolve(Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;)V
    .locals 5
    .param p1, "resolution"    # Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;

    .prologue
    .line 193
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 194
    .local v0, "promiseArgs":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 195
    iget-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$7;->this$0:Lcom/oculus/modules/codegen/AuthModule;

    iget-wide v2, v1, Lcom/oculus/modules/codegen/AuthModule;->RVRCtxTag:J

    iget v1, p0, Lcom/oculus/modules/codegen/AuthModule$7;->val$resolveID:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/oculus/modules/codegen/AuthModule;->access$000(JILjava/lang/String;)V

    .line 196
    return-void
.end method

.method public bridge synthetic resolve(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 191
    check-cast p1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;

    invoke-virtual {p0, p1}, Lcom/oculus/modules/codegen/AuthModule$7;->resolve(Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;)V

    return-void
.end method
