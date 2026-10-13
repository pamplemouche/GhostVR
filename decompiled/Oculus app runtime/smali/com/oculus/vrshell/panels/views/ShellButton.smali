.class public Lcom/oculus/vrshell/panels/views/ShellButton;
.super Landroid/widget/Button;
.source "ShellButton.java"


# instance fields
.field private isViewStateListenerSet:Z

.field private final mCompositeClickListener:Lcom/oculus/vrshell/panels/CompositeOnClickListener;

.field private final mCompositeHoverListener:Lcom/oculus/vrshell/panels/CompositeOnHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Lcom/oculus/vrshell/panels/CompositeOnClickListener;

    invoke-direct {p1}, Lcom/oculus/vrshell/panels/CompositeOnClickListener;-><init>()V

    iput-object p1, p0, Lcom/oculus/vrshell/panels/views/ShellButton;->mCompositeClickListener:Lcom/oculus/vrshell/panels/CompositeOnClickListener;

    .line 18
    iget-object p1, p0, Lcom/oculus/vrshell/panels/views/ShellButton;->mCompositeClickListener:Lcom/oculus/vrshell/panels/CompositeOnClickListener;

    invoke-super {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance p1, Lcom/oculus/vrshell/panels/CompositeOnHoverListener;

    invoke-direct {p1}, Lcom/oculus/vrshell/panels/CompositeOnHoverListener;-><init>()V

    iput-object p1, p0, Lcom/oculus/vrshell/panels/views/ShellButton;->mCompositeHoverListener:Lcom/oculus/vrshell/panels/CompositeOnHoverListener;

    .line 22
    iget-object p1, p0, Lcom/oculus/vrshell/panels/views/ShellButton;->mCompositeHoverListener:Lcom/oculus/vrshell/panels/CompositeOnHoverListener;

    invoke-super {p0, p1}, Landroid/widget/Button;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method


# virtual methods
.method public clearOnClickListener()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/ShellButton;->mCompositeClickListener:Lcom/oculus/vrshell/panels/CompositeOnClickListener;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/CompositeOnClickListener;->clearListeners()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 32
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 36
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/views/ShellButton;->isViewStateListenerSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/views/ShellButton;->isViewStateListenerSet:Z

    .line 38
    invoke-static {p0}, Lcom/oculus/vrshell/panels/ViewState;->setupViewStateListeners(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/ShellButton;->mCompositeClickListener:Lcom/oculus/vrshell/panels/CompositeOnClickListener;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/panels/CompositeOnClickListener;->addListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/ShellButton;->mCompositeHoverListener:Lcom/oculus/vrshell/panels/CompositeOnHoverListener;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/panels/CompositeOnHoverListener;->addListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method
