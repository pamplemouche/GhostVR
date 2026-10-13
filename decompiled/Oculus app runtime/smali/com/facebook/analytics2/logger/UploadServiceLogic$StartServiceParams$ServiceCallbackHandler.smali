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

    .line 470
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 471
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ServiceCallbackHandler;->mServiceCallback:Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 476
    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ServiceCallbackHandler;->mServiceCallback:Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;

    invoke-interface {p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;->serviceStarted()V

    .line 477
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$100()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
