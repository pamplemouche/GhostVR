.class final Lcom/facebook/crudolib/view/impression/VisibilityLogic;
.super Ljava/lang/Object;
.source "VisibilityLogic.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getGlobalVisibleRect(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method
