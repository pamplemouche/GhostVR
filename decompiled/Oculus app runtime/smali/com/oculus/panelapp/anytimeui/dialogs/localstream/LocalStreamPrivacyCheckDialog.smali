.class public Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "LocalStreamPrivacyCheckDialog.java"


# static fields
.field private static final ALLOW_ACTION_RESULT:Ljava/lang/String; = "allow"

.field private static final ALLOW_ACTION_RESULT_WITH_PRIVACY_CHECK_DISABLED:Ljava/lang/String; = "allow_and_disable_privacy_check"

.field private static final COUNTDOWN_START:I = 0xf

.field private static final DENY_ACTION_RESULT:Ljava/lang/String; = "deny"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfigured:Z

.field private mDisablePrivacyCheck:Z

.field private mExpiresAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->mDisablePrivacyCheck:Z

    .line 34
    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->TAG:Ljava/lang/String;

    const-string v0, "LocalStreamPrivacyCheckDialog dialog constructed"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->mConfigured:Z

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->getExpiry(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->mExpiresAt:J

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;)I
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->getCountdown()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;)Z
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->getConfigured()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->updateCountdownText(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->mDisablePrivacyCheck:Z

    return p0
.end method

.method private getConfigured()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->mConfigured:Z

    return v0
.end method

.method private getCountdown()I
    .locals 4

    .line 44
    iget-wide v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->mExpiresAt:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private static getExpiry(J)J
    .locals 2

    const-wide/16 v0, 0x3e80

    add-long/2addr p0, v0

    return-wide p0
.end method

.method private updateCountdownText(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;)V
    .locals 5

    .line 121
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->getCountdown()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->local_stream_privacy_check_dialog_callout_plural:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->local_stream_privacy_check_dialog_callout_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setCalloutText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 6

    .line 134
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "requestUri: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "timestamp"

    .line 136
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->getExpiry(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->mExpiresAt:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    sget-object v2, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->TAG:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v0, "Could not parse %s as timestamp"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 145
    :cond_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string p1, "timestamp not found in uri: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    iput-boolean v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->mConfigured:Z

    return-void
.end method

.method public initialize()V
    .locals 4

    .line 56
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_privacy_check_dialog_layout:I

    .line 57
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    const/4 v1, 0x4

    .line 60
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setVisibility(I)V

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 66
    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;Landroid/os/Handler;)V

    .line 86
    new-instance v3, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    .line 107
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->privacy_check_disable_warning:I

    .line 108
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 109
    new-instance v3, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/-$$Lambda$LocalStreamPrivacyCheckDialog$MiV-HwkkGoS2WdrziyGt0PBdI6o;

    invoke-direct {v3, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/-$$Lambda$LocalStreamPrivacyCheckDialog$MiV-HwkkGoS2WdrziyGt0PBdI6o;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->updateCountdownText(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;)V

    .line 116
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$initialize$0$LocalStreamPrivacyCheckDialog(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 110
    iput-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->mDisablePrivacyCheck:Z

    return-void
.end method
