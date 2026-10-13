.class public final synthetic LxZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final w:LCZ;


# direct methods
.method public constructor <init>(LCZ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LxZ;->w:LCZ;

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    iget-object v0, p0, LxZ;->w:LCZ;

    .line 1
    iget-boolean v1, v0, LCZ;->H:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, LCZ;->G:LDa0;

    invoke-virtual {v1}, LDa0;->a()V

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, LCZ;->H:Z

    .line 3
    iget-object v1, v0, LCZ;->F:LCa0;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, LCa0;->a:Landroid/graphics/Bitmap;

    .line 5
    iput-object v2, v1, LCa0;->b:Landroid/graphics/Bitmap;

    .line 6
    iput-object v2, v1, LCa0;->c:Landroid/graphics/Bitmap;

    .line 7
    iput-object v2, v1, LCa0;->d:Landroid/graphics/Bitmap;

    .line 8
    :cond_1
    iget-object v1, v0, LCZ;->E:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v0, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget-object v0, v0, LCZ;->E:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    return-void
.end method
