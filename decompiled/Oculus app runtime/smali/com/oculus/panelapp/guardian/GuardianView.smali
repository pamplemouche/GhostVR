.class public Lcom/oculus/panelapp/guardian/GuardianView;
.super Landroid/widget/LinearLayout;
.source "GuardianView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/panelapp/guardian/GuardianView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/guardian/GuardianView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    sget-object p1, Lcom/oculus/panelapp/guardian/GuardianView;->TAG:Ljava/lang/String;

    const-string p2, "GuardianView created"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/panelapp/guardian/GuardianPanelApp;)V
    .locals 2

    .line 23
    sget v0, Lcom/oculus/panelapp/guardian/R$id;->guardian_panel_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/guardian/GuardianView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 24
    new-instance v1, Lcom/oculus/panelapp/guardian/GuardianView$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/guardian/GuardianView$1;-><init>(Lcom/oculus/panelapp/guardian/GuardianView;Lcom/oculus/panelapp/guardian/GuardianPanelApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
