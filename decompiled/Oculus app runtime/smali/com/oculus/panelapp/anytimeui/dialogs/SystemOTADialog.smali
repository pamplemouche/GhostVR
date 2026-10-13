.class public final Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "SystemOTADialog.java"


# static fields
.field private static final FALSE_STRING:Ljava/lang/String; = "false"

.field private static final OTA_COMPONENT_NAME:Ljava/lang/String; = "com.oculus.updater.core.os.OSUpdateService"

.field private static final OTA_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.updater"

.field private static final OTA_UPDATE_ACTION:Ljava/lang/String; = "ext_check_updates"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mMessage:Landroid/widget/TextView;

.field private mText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->TAG:Ljava/lang/String;

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
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->TAG:Ljava/lang/String;

    const-string p2, "SystemFailure dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private logOTAServiceResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 78
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "intent_result"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v2, "return_component"

    aput-object v2, v1, p1

    .line 84
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p2, "unknown"

    :cond_0
    const/4 p1, 0x3

    aput-object p2, v1, p1

    const-string p1, "oculus_vrshell_ota_dialog_response"

    .line 79
    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->rawLogEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private requestOTA(Ljava/lang/String;)V
    .locals 4

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ext_check_updates"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.updater"

    const-string v3, "com.oculus.updater.core.os.OSUpdateService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->TAG:Ljava/lang/String;

    const-string v1, "OTA Update Service launched. Sending \'ok\' response."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ok"

    .line 70
    invoke-direct {p0, v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->logOTAServiceResponse(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->TAG:Ljava/lang/String;

    const-string v2, "Unable to launch OTA service. Sending \'cancel\' response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "security_exception"

    .line 73
    invoke-direct {p0, v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->logOTAServiceResponse(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 3

    .line 49
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->setVisibility(I)V

    const-string v1, "RequiresUpdate"

    .line 51
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->mMessage:Landroid/widget/TextView;

    const-string v1, "Message"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "return_component"

    .line 59
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->requestOTA(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 2

    .line 32
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->dialog_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->mButton:Landroid/widget/Button;

    .line 33
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->dialog_title:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->mTitle:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->dialog_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->mText:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->dialog_message:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->mMessage:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
