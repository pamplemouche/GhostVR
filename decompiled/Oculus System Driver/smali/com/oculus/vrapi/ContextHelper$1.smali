.class final Lcom/oculus/vrapi/ContextHelper$1;
.super Ljava/lang/Object;
.source "ContextHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrapi/ContextHelper;->finishActivityWithoutTransitionAnimation(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/oculus/vrapi/ContextHelper$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/oculus/vrapi/ContextHelper$1;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/oculus/vrapi/ContextHelper$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 72
    invoke-static {v0}, Lcom/oculus/vrapi/ContextHelper;->access$000(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oculus/vrapi/ContextHelper$1;->val$force:Z

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    invoke-static {}, Lcom/oculus/vrapi/ContextHelper;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling finish() on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method
