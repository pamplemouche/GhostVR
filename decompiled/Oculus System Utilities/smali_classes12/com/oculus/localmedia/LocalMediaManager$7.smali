.class final Lcom/oculus/localmedia/LocalMediaManager$7;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/localmedia/LocalMediaManager;->queryAsync(Ljava/lang/String;Lcom/oculus/localmedia/LocalMediaManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oculus/localmedia/LocalMediaManager$Callback;

.field final synthetic val$jsonQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/oculus/localmedia/LocalMediaManager$Callback;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/oculus/localmedia/LocalMediaManager$7;->val$jsonQuery:Ljava/lang/String;

    iput-object p2, p0, Lcom/oculus/localmedia/LocalMediaManager$7;->val$callback:Lcom/oculus/localmedia/LocalMediaManager$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 348
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager$7;->val$jsonQuery:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oculus/localmedia/LocalMediaManager;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "jsonResponse":Ljava/lang/String;
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager$7;->val$callback:Lcom/oculus/localmedia/LocalMediaManager$Callback;

    invoke-interface {v1, v0}, Lcom/oculus/localmedia/LocalMediaManager$Callback;->onComplete(Ljava/lang/String;)V

    .line 350
    return-void
.end method
