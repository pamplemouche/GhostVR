.class public Lcom/oculus/horizon/widget/BottomNav;
.super Landroid/widget/LinearLayout;
.source "BottomNav.java"


# instance fields
.field private mOnTabClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/BottomNav;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/widget/BottomNav;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/BottomNav;->setOrientation(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public addAction(Lcom/oculus/horizon/navbaraction/Action;)Landroid/view/View;
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/BottomNav;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    sget v1, Lcom/oculus/horizon/R$layout;->widget_bottom_nav_action:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 41
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object v1, p0, Lcom/oculus/horizon/widget/BottomNav;->mOnTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p1, v0}, Lcom/oculus/horizon/navbaraction/Action;->update(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/BottomNav;->addView(Landroid/view/View;)V

    .line 45
    return-object v0
.end method

.method public newAction()Lcom/oculus/horizon/navbaraction/Action;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/oculus/horizon/navbaraction/Action;

    invoke-virtual {p0}, Lcom/oculus/horizon/widget/BottomNav;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navbaraction/Action;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setOnTabClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oculus/horizon/widget/BottomNav;->mOnTabClickListener:Landroid/view/View$OnClickListener;

    .line 50
    return-void
.end method
