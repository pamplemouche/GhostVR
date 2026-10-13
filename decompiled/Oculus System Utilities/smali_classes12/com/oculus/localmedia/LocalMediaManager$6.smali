.class final Lcom/oculus/localmedia/LocalMediaManager$6;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/localmedia/LocalMediaManager;->refreshAsync(Ljava/lang/String;Lcom/oculus/localmedia/LocalMediaManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oculus/localmedia/LocalMediaManager$Callback;

.field final synthetic val$mediaTypes:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/oculus/localmedia/LocalMediaManager$Callback;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/oculus/localmedia/LocalMediaManager$6;->val$mediaTypes:Ljava/lang/String;

    iput-object p2, p0, Lcom/oculus/localmedia/LocalMediaManager$6;->val$callback:Lcom/oculus/localmedia/LocalMediaManager$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 325
    invoke-static {}, Lcom/oculus/localmedia/LocalMediaManager;->access$400()Lcom/oculus/localmedia/LocalMediaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager$6;->val$mediaTypes:Ljava/lang/String;

    invoke-static {v1}, Lcom/oculus/localmedia/MediaQueryUtils;->parseMediaTypes(Ljava/lang/String;)I

    move-result v0

    .line 328
    .local v0, "types":I
    invoke-static {v0}, Lcom/oculus/localmedia/LocalMediaManager;->refresh(I)V

    .line 329
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager$6;->val$callback:Lcom/oculus/localmedia/LocalMediaManager$Callback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oculus/localmedia/LocalMediaManager$Callback;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v0    # "types":I
    :cond_0
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v1

    goto :goto_0
.end method
