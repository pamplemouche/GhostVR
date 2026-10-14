.class public Landroid/support/v7/widget/SeslSeekBar;
.super Landroid/support/v7/widget/gl;


# instance fields
.field private k:Landroid/support/v7/widget/jl;

.field private l:Landroid/support/v7/widget/jm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/b/b;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/gl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/gl;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->k:Landroid/support/v7/widget/jl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/support/v7/widget/jl;->a(Landroid/support/v7/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method a(FZI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/gl;->a(FZI)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslSeekBar;->k:Landroid/support/v7/widget/jl;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p3, p2}, Landroid/support/v7/widget/jl;->a(Landroid/support/v7/widget/SeslSeekBar;IZ)V

    :cond_0
    return-void
.end method

.method a(III)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->l:Landroid/support/v7/widget/jm;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/jm;->a(Landroid/support/v7/widget/SeslSeekBar;I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/gl;->a(III)V

    return-void
.end method

.method b()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/gl;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->k:Landroid/support/v7/widget/jl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/support/v7/widget/jl;->b(Landroid/support/v7/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method b(III)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->l:Landroid/support/v7/widget/jm;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Landroid/support/v7/widget/jm;->a(Landroid/support/v7/widget/SeslSeekBar;IZ)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/gl;->b(III)V

    return-void
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslSeekBar;->l:Landroid/support/v7/widget/jm;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/support/v7/widget/jm;->a(Landroid/support/v7/widget/SeslSeekBar;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/gl;->e()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/gl;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslSeekBar;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/support/v7/widget/jl;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslSeekBar;->k:Landroid/support/v7/widget/jl;

    return-void
.end method

.method public setOnSeekBarHoverListener(Landroid/support/v7/widget/jm;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslSeekBar;->l:Landroid/support/v7/widget/jm;

    return-void
.end method
