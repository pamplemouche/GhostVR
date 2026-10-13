.class Lcom/oculus/horizon/capture/LegacyCapture$3;
.super Ljava/lang/Object;
.source "LegacyCapture.java"

# interfaces
.implements Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/capture/LegacyCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/capture/LegacyCapture;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/capture/LegacyCapture;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oculus/horizon/capture/LegacyCapture$3;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logEventFailed(I)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public logEventFinished(I)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public logEventStarted(I)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public logWaterfallError(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public logWaterfallEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method
