.class public final LhW0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    new-instance v0, LKZ0;

    invoke-direct {v0, p1, p2}, LKZ0;-><init>(LC01;Landroid/view/ActionMode$Callback;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
