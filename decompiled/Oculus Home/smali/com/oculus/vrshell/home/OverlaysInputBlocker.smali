.class public Lcom/oculus/vrshell/home/OverlaysInputBlocker;
.super Ljava/lang/Object;
.source "OverlaysInputBlocker.java"


# static fields
.field private static final BLOCK_INPUT_FOR_OVERLAY:Ljava/lang/String; = "com.oculus.vrdriver.block_input_for_overlay"

.field private static final KEY_INPUT_BLOCKING_TYPE:Ljava/lang/String; = "input_blocking_type"

.field private static final VALUE_NO_INPUT_BLOCKING:Ljava/lang/String; = "no_input_blocking"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startBlockingInput(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputBlockingType"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrdriver.block_input_for_overlay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "input_blocking_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 17
    return-void
.end method

.method public static stopBlockingInput(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrdriver.block_input_for_overlay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "unblockInputIntent":Landroid/content/Intent;
    const-string v1, "input_blocking_type"

    const-string v2, "no_input_blocking"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 23
    return-void
.end method
