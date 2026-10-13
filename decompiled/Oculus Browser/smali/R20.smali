.class public final synthetic LR20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR20;->w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LR20;->w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    throw v0
.end method
