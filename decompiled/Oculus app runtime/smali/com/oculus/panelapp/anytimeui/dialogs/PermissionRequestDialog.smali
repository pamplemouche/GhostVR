.class public final Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "PermissionRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Lcom/oculus/vrshell/panels/views/SystemDialog;

.field private mFeature:Lcom/oculus/vrshell/ShellPermissions$Permission;

.field private mPermissions:Lcom/oculus/vrshell/ShellPermissions;

.field private mPrimary:Landroid/widget/Button;

.field private mProduct:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

.field private mSecondary:Landroid/widget/Button;

.field private mText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->TAG:Ljava/lang/String;

    const-string p2, "PermissionRequestDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->logDialogAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;)Lcom/oculus/vrshell/ShellPermissions$Permission;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mFeature:Lcom/oculus/vrshell/ShellPermissions$Permission;

    return-object p0
.end method

.method private cancel(Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->logDialogAction(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionResumeVideo()V

    return-void
.end method

.method private getDialogIcon()I
    .locals 3

    .line 164
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mFeature:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-virtual {v1}, Lcom/oculus/vrshell/ShellPermissions$Permission;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 170
    sget v0, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_system_dialog_storage:I

    return v0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine icon for feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mFeature:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-virtual {v2}, Lcom/oculus/vrshell/ShellPermissions$Permission;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    sget v0, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_system_dialog_microphone:I

    return v0

    .line 166
    :cond_2
    sget v0, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_system_dialog_camera:I

    return v0
.end method

.method private getMessageTextResId()I
    .locals 3

    .line 195
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;->$SwitchMap$com$oculus$panelapp$anytimeui$dialogs$PermissionRequestDialog$Product:[I

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mProduct:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPermissions:Lcom/oculus/vrshell/ShellPermissions;

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$Permission;->WRITE_STORAGE:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->isPermissionPermanentlyDisabled(Lcom/oculus/vrshell/ShellPermissions;Lcom/oculus/vrshell/ShellPermissions$Permission;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->dialog_permission_request_message_screenshot_blocked:I

    return v0

    .line 212
    :cond_0
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->dialog_permission_request_message_screenshot:I

    return v0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine message text for product: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mProduct:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPermissions:Lcom/oculus/vrshell/ShellPermissions;

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$Permission;->MICROPHONE:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->isPermissionPermanentlyDisabled(Lcom/oculus/vrshell/ShellPermissions;Lcom/oculus/vrshell/ShellPermissions$Permission;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->dialog_permission_request_message_voice_blocked:I

    return v0

    .line 206
    :cond_3
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->dialog_permission_request_message_voice:I

    return v0

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPermissions:Lcom/oculus/vrshell/ShellPermissions;

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$Permission;->CAMERA:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->isPermissionPermanentlyDisabled(Lcom/oculus/vrshell/ShellPermissions;Lcom/oculus/vrshell/ShellPermissions$Permission;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->dialog_permission_request_message_passthrough_blocked:I

    return v0

    .line 200
    :cond_5
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->dialog_permission_request_message_passthrough:I

    return v0
.end method

.method private getTitleTextResId()I
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPermissions:Lcom/oculus/vrshell/ShellPermissions;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mFeature:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->isPermissionPermanentlyDisabled(Lcom/oculus/vrshell/ShellPermissions;Lcom/oculus/vrshell/ShellPermissions$Permission;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->dialog_permission_request_title_blocked:I

    return v0

    .line 181
    :cond_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mFeature:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-virtual {v1}, Lcom/oculus/vrshell/ShellPermissions$Permission;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 187
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->dialog_permission_request_title_storage:I

    return v0

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine title text for feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mFeature:Lcom/oculus/vrshell/ShellPermissions$Permission;

    .line 191
    invoke-virtual {v2}, Lcom/oculus/vrshell/ShellPermissions$Permission;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_2
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->dialog_permission_request_title_microphone:I

    return v0

    .line 183
    :cond_3
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->dialog_permission_request_title_camera:I

    return v0
.end method

.method private static isPermissionPermanentlyDisabled(Lcom/oculus/vrshell/ShellPermissions;Lcom/oculus/vrshell/ShellPermissions$Permission;)Z
    .locals 2

    .line 221
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    invoke-virtual {p1}, Lcom/oculus/vrshell/ShellPermissions$Permission;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellPermissions;->isWriteStoragePermissionPermanentlyDisabled()Z

    move-result p0

    return p0

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected permission type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellPermissions;->isMicrophonePermissionPermanentlyDisabled()Z

    move-result p0

    return p0

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellPermissions;->isCameraPermissionPermanentlyDisabled()Z

    move-result p0

    return p0
.end method

.method private logDialogAction(Ljava/lang/String;)V
    .locals 6

    .line 103
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPermissions:Lcom/oculus/vrshell/ShellPermissions;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mFeature:Lcom/oculus/vrshell/ShellPermissions$Permission;

    .line 106
    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->isPermissionPermanentlyDisabled(Lcom/oculus/vrshell/ShellPermissions;Lcom/oculus/vrshell/ShellPermissions$Permission;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mFeature:Lcom/oculus/vrshell/ShellPermissions$Permission;

    const-string v2, "invalid_uri"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oculus/vrshell/ShellPermissions$Permission;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 110
    :goto_1
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mProduct:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const/16 v3, 0x8

    .line 112
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "feature"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    const-string v4, "product"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "permission_disabled"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    aput-object v0, v3, v1

    const/4 v0, 0x6

    const-string v1, "dialog_action"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    aput-object p1, v3, v0

    .line 122
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    sget-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_permissions_dialog:Lcom/oculus/vrshell/panels/telemetry/Event;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/telemetry/Event;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->rawLogEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateViews()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPrimary:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mSecondary:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mDialog:Lcom/oculus/vrshell/panels/views/SystemDialog;

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->getDialogIcon()I

    move-result v2

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->getTitleTextResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->getMessageTextResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPrimary:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$2;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPermissions:Lcom/oculus/vrshell/ShellPermissions;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mFeature:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-static {v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->isPermissionPermanentlyDisabled(Lcom/oculus/vrshell/ShellPermissions;Lcom/oculus/vrshell/ShellPermissions$Permission;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPrimary:Landroid/widget/Button;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->dialog_permission_request_button_blocked:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 154
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mSecondary:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPrimary:Landroid/widget/Button;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->dialog_permission_request_button_allow_access:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 157
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mSecondary:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    const-string v0, "update_views"

    .line 160
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->logDialogAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 3

    .line 79
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    const-string v1, "shellPermission"

    .line 82
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/vrshell/ShellPermissions$Permission;->fromString(Ljava/lang/String;)Lcom/oculus/vrshell/ShellPermissions$Permission;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mFeature:Lcom/oculus/vrshell/ShellPermissions$Permission;

    const-string v1, "requestingProduct"

    .line 83
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->access$100(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mProduct:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPermissions:Lcom/oculus/vrshell/ShellPermissions;

    const-string v0, "configure"

    .line 88
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->logDialogAction(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionGetPermissions()V

    .line 93
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionPauseVideo()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "illegal_argument"

    .line 96
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->cancel(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected feature/product passed to permission request! requestUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize()V
    .locals 2

    .line 50
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->system_dialog:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialog;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mDialog:Lcom/oculus/vrshell/panels/views/SystemDialog;

    .line 51
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->dialog_title:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mTitle:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->dialog_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mText:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->dialog_secondary:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mSecondary:Landroid/widget/Button;

    .line 55
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->dialog_primary:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPrimary:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mSecondary:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackButton()Z
    .locals 1

    const-string v0, "back"

    .line 73
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->cancel(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPermissions(Lcom/oculus/vrshell/ShellPermissions;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->mPermissions:Lcom/oculus/vrshell/ShellPermissions;

    .line 128
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->updateViews()V

    return-void
.end method
