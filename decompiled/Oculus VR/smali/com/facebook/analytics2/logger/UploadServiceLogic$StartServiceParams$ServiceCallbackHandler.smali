.class Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ServiceCallbackHandler;
.super Landroid/os/Handler;
.source "UploadServiceLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceCallbackHandler"
.end annotation


# instance fields
.field private final mServiceCallback:Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 475
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ServiceCallbackHandler;->mServiceCallback:Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;

    .line 476
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ServiceCallbackHandler;->mServiceCallback:Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;->serviceStarted()V

    .line 481
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method
