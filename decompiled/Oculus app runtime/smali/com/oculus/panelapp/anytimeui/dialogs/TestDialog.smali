.class public Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "TestDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultTextSize:F

.field private mPrimaryButton:Landroid/widget/Button;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x41e00000    # 28.0f

    .line 51
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->mDefaultTextSize:F

    .line 19
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->TAG:Ljava/lang/String;

    const-string p2, "Test Dialog Constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;)Landroid/widget/TextView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;)F
    .locals 0

    .line 14
    iget p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->mDefaultTextSize:F

    return p0
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 24
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->initialize()V

    .line 25
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->test_dialog_btn1:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->mPrimaryButton:Landroid/widget/Button;

    .line 26
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->test_dialog_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->mTextView:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->mPrimaryButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$2;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->TAG:Ljava/lang/String;

    const-string v1, "Test Dialog Initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
