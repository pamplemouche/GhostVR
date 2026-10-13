.class public Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;
.super Landroid/widget/LinearLayout;
.source "EnterpriseKeypadView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private keypadCodeView:Landroid/widget/TextView;

.field private mPanelApp:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object p1, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->TAG:Ljava/lang/String;

    const-string p2, "EnterpriseKeypadView created"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;)V
    .locals 1

    .line 25
    iput-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->mPanelApp:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;

    .line 27
    invoke-virtual {p0}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->openKeyboard()V

    .line 29
    sget p1, Lcom/oculus/panelapp/enterprisekeypad/R$id;->enterprise_keypad_code_view:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->keypadCodeView:Landroid/widget/TextView;

    .line 32
    iget-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->keypadCodeView:Landroid/widget/TextView;

    new-instance v0, Lcom/oculus/panelapp/enterprisekeypad/-$$Lambda$EnterpriseKeypadView$DFzcDxGnjz1oIhkS8jAcIDKtJHc;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/enterprisekeypad/-$$Lambda$EnterpriseKeypadView$DFzcDxGnjz1oIhkS8jAcIDKtJHc;-><init>(Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initialize$0$EnterpriseKeypadView(Landroid/view/View;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->openKeyboard()V

    return-void
.end method

.method public openKeyboard()V
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->mPanelApp:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;

    const-string v1, "enterprise_keypad"

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "NUMBER_DEFAULT"

    const-string v6, ""

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->actionSendKeyboardOpen(Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setCodeLength(I)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->keypadCodeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    new-array p1, p1, [C

    const/16 v0, 0x2a

    .line 46
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 47
    iget-object v0, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->keypadCodeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/TextView;->setText([CII)V

    return-void
.end method
