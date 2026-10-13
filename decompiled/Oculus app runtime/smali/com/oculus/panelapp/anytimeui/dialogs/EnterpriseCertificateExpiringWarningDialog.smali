.class public Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "EnterpriseCertificateExpiringWarningDialog.java"


# static fields
.field private static final DAY_IN_MILLIS:I = 0x5265c00

.field private static final DIALOG_DURATION_MILLIS:J = 0xfa0L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog;->TAG:Ljava/lang/String;

    const-string p2, "EnterpriseCertificateExpiringWarningDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 6

    .line 32
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "black"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetBackground(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog;)V

    .line 46
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog$1;->start()V

    .line 48
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/os/enterprise/EnterpriseServer;->isInEnterpriseMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/os/enterprise/EnterpriseServer;->getConfiguration(Landroid/content/Context;)Lcom/oculus/os/enterprise/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/os/enterprise/Configuration;->getLicenseExpirationDate()Ljava/util/Date;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 53
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 54
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 56
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    .line 57
    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 59
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->enterprise_certificate_expiring_warning_text:I

    .line 60
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oculus/panelapp/anytimeui/R$string;->certificate_expiring_warning_text_days:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_0
    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->certificate_expiring_warning_text_one_day:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 63
    :cond_1
    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->certificate_expiring_warning_text_today:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->onAttachedToWindow()V

    .line 83
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->suppressToasts()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->onDetachedFromWindow()V

    .line 89
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiringWarningDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->unsuppressToasts()V

    return-void
.end method
