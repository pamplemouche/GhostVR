.class Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$1;
.super Ljava/lang/Object;
.source "FBConnectInit.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;->onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$1;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$1;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;->access$300(Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;)Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    const/4 v2, 0x0

    sget-object v3, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->FACEBOOK:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;->delete([Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)I

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method
