.class final Lcom/oculus/localmedia/LocalMediaManager$1;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/LocalMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appPtr:J

.field final synthetic val$mediaTypes:Ljava/lang/String;

.field final synthetic val$requestId:I


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 134
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager$1;->val$mediaTypes:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/localmedia/MediaQueryUtils;->parseMediaTypes(Ljava/lang/String;)I

    move-result v0

    .line 136
    invoke-static {v0}, Lcom/oculus/localmedia/LocalMediaManager;->refresh(I)V

    .line 137
    iget v0, p0, Lcom/oculus/localmedia/LocalMediaManager$1;->val$requestId:I

    iget-wide v2, p0, Lcom/oculus/localmedia/LocalMediaManager$1;->val$appPtr:J

    invoke-static {v0, v2, v3}, Lcom/oculus/localmedia/LocalMediaManager;->access$000(IJ)V

    .line 139
    :cond_0
    return-void
.end method
