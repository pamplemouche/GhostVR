.class public Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer$ToolbarViewResourceFrameLayout;
.super Lorg/chromium/chrome/browser/ui/widget/ViewResourceFrameLayout;
.source "PG"


# instance fields
.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/ui/widget/ViewResourceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public c()LOe1;
    .locals 1

    .line 1
    new-instance v0, LMK0;

    invoke-direct {v0, p0}, LMK0;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer$ToolbarViewResourceFrameLayout;->z:Z

    return v0
.end method
