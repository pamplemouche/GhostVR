.class public LS20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LHc1;


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final synthetic b:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, LS20;->b:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, LS20;->a:Landroid/graphics/RectF;

    return-void
.end method
