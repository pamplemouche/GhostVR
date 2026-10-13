.class Lcom/oculus/horizon/remotewipe/RemoteWipeService$1;
.super Ljava/lang/Object;
.source "RemoteWipeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/remotewipe/RemoteWipeService;->retryWipe(Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

.field final synthetic val$remoteWipeRequester:Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/remotewipe/RemoteWipeService;Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$1;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    iput-object p2, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$1;->val$remoteWipeRequester:Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$1;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-static {v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$000(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)Lcom/oculus/horizon/remotewipe/RemoteWipeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$1;->val$remoteWipeRequester:Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/remotewipe/RemoteWipeHelper;->checkForRemoteWipeRequest(Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;)V

    .line 119
    return-void
.end method
