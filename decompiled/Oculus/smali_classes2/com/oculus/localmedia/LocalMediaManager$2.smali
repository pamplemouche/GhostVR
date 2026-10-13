.class final Lcom/oculus/localmedia/LocalMediaManager$2;
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

.field final synthetic val$jsonQuery:Ljava/lang/String;

.field final synthetic val$queryId:I


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager$2;->val$jsonQuery:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/localmedia/LocalMediaManager;->query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget v1, p0, Lcom/oculus/localmedia/LocalMediaManager$2;->val$queryId:I

    iget-wide v2, p0, Lcom/oculus/localmedia/LocalMediaManager$2;->val$appPtr:J

    invoke-static {v1, v0, v2, v3}, Lcom/oculus/localmedia/LocalMediaManager;->access$100(ILjava/lang/String;J)V

    .line 165
    return-void
.end method
