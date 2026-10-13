.class public Lcom/facebook/react/views/art/ARTGroupViewManager;
.super Lcom/facebook/react/views/art/ARTRenderableViewManager;
.source "ARTGroupViewManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ARTGroup"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ARTGroup"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/art/ARTRenderableViewManager;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
