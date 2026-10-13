.class final Lcom/oculus/localmedia/LocalMediaManager$4;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"

# interfaces
.implements Lcom/oculus/localmedia/LocalMediaManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/localmedia/LocalMediaManager;->queryAsync(Ljava/lang/String;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appPtr:J

.field final synthetic val$queryId:I


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 258
    iput p1, p0, Lcom/oculus/localmedia/LocalMediaManager$4;->val$queryId:I

    iput-wide p2, p0, Lcom/oculus/localmedia/LocalMediaManager$4;->val$appPtr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 261
    iget v0, p0, Lcom/oculus/localmedia/LocalMediaManager$4;->val$queryId:I

    iget-wide v2, p0, Lcom/oculus/localmedia/LocalMediaManager$4;->val$appPtr:J

    invoke-static {v0, p1, v2, v3}, Lcom/oculus/localmedia/LocalMediaManager;->access$300(ILjava/lang/String;J)V

    .line 262
    return-void
.end method
