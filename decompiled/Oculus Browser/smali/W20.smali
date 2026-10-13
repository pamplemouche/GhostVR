.class public LW20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, LW20;->w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 0

    .line 1
    iget-object p1, p0, LW20;->w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-static {p1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->b(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V

    return-void
.end method
