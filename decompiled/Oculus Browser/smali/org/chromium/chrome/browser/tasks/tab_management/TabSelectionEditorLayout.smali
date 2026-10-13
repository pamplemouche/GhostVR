.class public Lorg/chromium/chrome/browser/tasks/tab_management/TabSelectionEditorLayout;
.super Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/tasks/tab_management/TabSelectionEditorLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/widget/PopupWindow;

    const/4 p2, -0x1

    invoke-direct {p1, p0, p2, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method
