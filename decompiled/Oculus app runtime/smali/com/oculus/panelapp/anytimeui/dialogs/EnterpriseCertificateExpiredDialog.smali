.class public Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiredDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "EnterpriseCertificateExpiredDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiredDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiredDialog;->TAG:Ljava/lang/String;

    const-string p2, "EnterpriseCertificateExpiredDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 23
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->initialize()V

    .line 25
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiredDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "black"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetBackground(Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->onAttachedToWindow()V

    .line 32
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiredDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->suppressToasts()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->onDetachedFromWindow()V

    .line 38
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseCertificateExpiredDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->unsuppressToasts()V

    return-void
.end method
