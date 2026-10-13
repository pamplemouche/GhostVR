.class Lcom/oculus/horizon/cubemaps/Photo360View$4;
.super Ljava/lang/Object;
.source "Photo360View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cubemaps/Photo360View;->onReadyForRendering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cubemaps/Photo360View;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/oculus/horizon/cubemaps/Photo360View$4;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$4;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-virtual {v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->handleOnReadyForRendering()V

    .line 213
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$4;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-static {v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->access$600(Lcom/oculus/horizon/cubemaps/Photo360View;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View$4;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-static {v1}, Lcom/oculus/horizon/cubemaps/Photo360View;->access$500(Lcom/oculus/horizon/cubemaps/Photo360View;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    return-void
.end method
