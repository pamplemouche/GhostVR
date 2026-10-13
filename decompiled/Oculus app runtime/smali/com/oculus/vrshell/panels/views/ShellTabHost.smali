.class public Lcom/oculus/vrshell/panels/views/ShellTabHost;
.super Landroid/widget/TabHost;
.source "ShellTabHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 5

    .line 55
    invoke-super {p0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 57
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 59
    invoke-virtual {p1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/TabWidget;->setWeightSum(F)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object p1

    .line 62
    sget v1, Lcom/oculus/vrshell/shellpanel/R$drawable;->tab_button_background:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x31

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x1020016

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oculus/vrshell/shellpanel/R$style;->TabText:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/16 v2, 0x11

    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 77
    new-instance v1, Lcom/oculus/vrshell/panels/views/ShellTabHost$1;

    invoke-direct {v1, p0, v0}, Lcom/oculus/vrshell/panels/views/ShellTabHost$1;-><init>(Lcom/oculus/vrshell/panels/views/ShellTabHost;I)V

    .line 85
    invoke-static {p1}, Lcom/oculus/vrshell/panels/ViewState;->findInParents(Landroid/view/View;)Lcom/oculus/vrshell/panels/ViewState$Listener;

    move-result-object v0

    const/4 v2, 0x0

    .line 86
    invoke-static {p1, v0, v1, v2}, Lcom/oculus/vrshell/panels/ViewState;->setViewStateListeners(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/View$OnClickListener;Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public addTab(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    .line 48
    invoke-virtual {p1, p3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 50
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method public setup()V
    .locals 3

    .line 37
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 39
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDividerPadding(I)V

    .line 40
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    sget v1, Lcom/oculus/vrshell/shellpanel/R$drawable;->tab_button_divider:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDividerDrawable(I)V

    .line 41
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setShowDividers(I)V

    .line 42
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/vrshell/shellpanel/R$color;->oc_gray_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setBackgroundColor(I)V

    return-void
.end method
