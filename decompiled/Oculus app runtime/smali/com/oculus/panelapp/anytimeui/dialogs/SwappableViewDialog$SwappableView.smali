.class public abstract Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;
.super Ljava/lang/Object;
.source "SwappableViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SwappableView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mInflatedView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mLayoutRes:I

.field private final mParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;I)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->mParent:Ljava/lang/ref/WeakReference;

    .line 35
    iput p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->mLayoutRes:I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->hide()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->show()V

    return-void
.end method

.method private hide()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->mInflatedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->onHidden()V

    return-void
.end method

.method private show()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->mInflatedView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;

    .line 51
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->mLayoutRes:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->mInflatedView:Landroid/view/View;

    .line 52
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->mInflatedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;->requestLayout()V

    .line 54
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->onInflated()V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->onShown()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 0

    return-void
.end method

.method public onInflated()V
    .locals 0

    return-void
.end method

.method public onShown()V
    .locals 0

    return-void
.end method
