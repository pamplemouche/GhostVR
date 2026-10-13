.class Lcom/oculus/horizon/fbconnect/FBConnectHelper$2;
.super Ljava/lang/Object;
.source "FBConnectHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnect/FBConnectHelper;->fetchFBDataAsync(Lbolts/CancellationTokenSource;)Lbolts/Task;
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
        "Lcom/oculus/horizon/fbconnect/FacebookData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$2;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/oculus/horizon/fbconnect/FacebookData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$2;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    const-string v1, "com.facebook.wakizashi"

    invoke-static {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$100(Lcom/oculus/horizon/fbconnect/FBConnectHelper;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 254
    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$2;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    const-string v1, "com.facebook.katana"

    invoke-static {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$100(Lcom/oculus/horizon/fbconnect/FBConnectHelper;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 258
    :cond_0
    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$200(Lorg/json/JSONObject;)Lcom/oculus/horizon/fbconnect/FacebookData;

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
    .line 249
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$2;->call()Lcom/oculus/horizon/fbconnect/FacebookData;

    move-result-object v0

    return-object v0
.end method
