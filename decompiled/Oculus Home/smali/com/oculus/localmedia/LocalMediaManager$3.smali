.class final Lcom/oculus/localmedia/LocalMediaManager$3;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"

# interfaces
.implements Lcom/oculus/localmedia/LocalMediaManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/localmedia/LocalMediaManager;->refreshAsync(Ljava/lang/String;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appPtr:J

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 240
    iput p1, p0, Lcom/oculus/localmedia/LocalMediaManager$3;->val$requestId:I

    iput-wide p2, p0, Lcom/oculus/localmedia/LocalMediaManager$3;->val$appPtr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 243
    iget v0, p0, Lcom/oculus/localmedia/LocalMediaManager$3;->val$requestId:I

    iget-wide v2, p0, Lcom/oculus/localmedia/LocalMediaManager$3;->val$appPtr:J

    invoke-static {v0, v2, v3}, Lcom/oculus/localmedia/LocalMediaManager;->access$200(IJ)V

    .line 244
    return-void
.end method
