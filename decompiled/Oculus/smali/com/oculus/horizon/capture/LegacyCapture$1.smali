.class Lcom/oculus/horizon/capture/LegacyCapture$1;
.super Ljava/lang/Object;
.source "LegacyCapture.java"

# interfaces
.implements Lcom/facebook/cameracore/common/StateCallback;


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
    .line 38
    iput-object p1, p0, Lcom/oculus/horizon/capture/LegacyCapture$1;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/oculus/horizon/capture/LegacyCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MP: Error in preparing video recorder"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$1;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/oculus/horizon/capture/LegacyCapture;->access$100(Lcom/oculus/horizon/capture/LegacyCapture;Ljava/lang/Exception;)V

    .line 48
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/oculus/horizon/capture/LegacyCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSuccess prepared recorder"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
