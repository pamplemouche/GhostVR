.class Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;
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
    name = "ForwardingJobHandlerCallback"
.end annotation


# instance fields
.field private final mJobFinishedNotifier:Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;

.field private final mJobName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploadJobInstrumentation:Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;->mJobFinishedNotifier:Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;

    .line 242
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;->mJobName:Ljava/lang/String;

    .line 243
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;->mUploadJobInstrumentation:Lcom/facebook/analytics2/logger/UploadJobInstrumentation;

    .line 244
    return-void
.end method


# virtual methods
.method public onExit()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;->mUploadJobInstrumentation:Lcom/facebook/analytics2/logger/UploadJobInstrumentation;

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;->mUploadJobInstrumentation:Lcom/facebook/analytics2/logger/UploadJobInstrumentation;

    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;->mJobName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/analytics2/logger/UploadJobInstrumentation;->recordUploadJobStop(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onVoluntaryCompletion(Z)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;->mJobFinishedNotifier:Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;

    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;->onVoluntaryCompletion(Z)V

    .line 249
    return-void
.end method
