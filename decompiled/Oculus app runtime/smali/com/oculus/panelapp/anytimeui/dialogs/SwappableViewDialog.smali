.class public Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "SwappableViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;
    }
.end annotation


# instance fields
.field private mCurrentView:Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;

.field private mViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;->mCurrentView:Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;

    return-void
.end method


# virtual methods
.method public getCurrentView()Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;->mCurrentView:Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;

    return-object v0
.end method

.method public varargs setViews([Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;->mViews:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;->mViews:Ljava/util/HashSet;

    .line 93
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;->mViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Dialog already has views!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public swapTo(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;->mViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;->mCurrentView:Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;

    if-eqz v0, :cond_0

    .line 106
    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;)V

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;->mCurrentView:Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;

    .line 110
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;)V

    return-void

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View is not owned by this dialog!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
