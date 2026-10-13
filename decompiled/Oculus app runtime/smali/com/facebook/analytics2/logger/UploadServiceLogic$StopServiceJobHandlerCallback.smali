.class Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;
.super Ljava/lang/Object;
.source "UploadServiceLogic.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadServiceLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopServiceJobHandlerCallback"
.end annotation


# instance fields
.field private final mJobName:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mStopServiceCallback:Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploadJobHandlerCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

.field private final mUploadJobInstrumentation:Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V
    .locals 0
    .param p2    # Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;->mUploadJobHandlerCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    .line 270
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;->mStopServiceCallback:Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;

    .line 271
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;->mJobName:Ljava/lang/String;

    .line 272
    iput-object p4, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;->mUploadJobInstrumentation:Lcom/facebook/analytics2/logger/UploadJobInstrumentation;

    return-void
.end method


# virtual methods
.method public onExit()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;->mUploadJobInstrumentation:Lcom/facebook/analytics2/logger/UploadJobInstrumentation;

    if-eqz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;->mJobName:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/analytics2/logger/UploadJobInstrumentation;->recordUploadJobStop(Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;->mUploadJobHandlerCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;->onExit()V

    .line 286
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;->mStopServiceCallback:Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;->stopService()V

    :cond_1
    return-void
.end method

.method public onVoluntaryCompletion(Z)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;->mUploadJobHandlerCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;->onVoluntaryCompletion(Z)V

    return-void
.end method
