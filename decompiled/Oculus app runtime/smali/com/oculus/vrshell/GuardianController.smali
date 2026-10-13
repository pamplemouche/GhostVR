.class public final Lcom/oculus/vrshell/GuardianController;
.super Ljava/lang/Object;
.source "GuardianController.java"


# static fields
.field private static final GUARDIAN_DIALOG:I = 0x0

.field private static final GUARDIAN_NOTIF:I = 0x1

.field public static final GUARDIAN_NOTIF_3DOF_ENABLED:Ljava/lang/String; = "systemux://guardian/notif_3dof_enabled"

.field private static final KEY_GUARDIAN_ACTION_TYPE:Ljava/lang/String; = "guardian_action_type"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/oculus/vrshell/GuardianController;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/GuardianController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getStringResourceByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static handleNotification(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    .line 35
    invoke-static {p1}, Lcom/oculus/vrshell/GuardianController;->isGuardianAction(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "guardian_action_type"

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 41
    invoke-static {p0, p1}, Lcom/oculus/vrshell/GuardianController;->sendGuardianNotification(Landroid/content/Context;Landroid/content/Intent;)V

    return v2

    :cond_1
    return v1
.end method

.method private static hasSeenIPDAdjust(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "MainActivity"

    .line 26
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "ipdAdjustSeen"

    const-string v1, ""

    .line 28
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static isGuardianAction(Landroid/content/Intent;)Z
    .locals 1

    .line 22
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oculus.vrshell.intent.action.GUARDIAN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isLaunchAction(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .line 48
    invoke-static {p1}, Lcom/oculus/vrshell/GuardianController;->isGuardianAction(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/oculus/vrshell/GuardianController;->hasSeenIPDAdjust(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const-string p0, "guardian_action_type"

    .line 56
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static sendGuardianNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent_data"

    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    const/4 v3, 0x2

    .line 75
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "systemux://guardian/notif_3dof_enabled"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, "toast_3dof_activated"

    move-object/from16 v2, p0

    .line 82
    invoke-static {v2, v0}, Lcom/oculus/vrshell/GuardianController;->getStringResourceByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tracking Off"

    move-object v6, v0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    move-object v5, v1

    move-object v6, v5

    :goto_0
    const/4 v7, 0x0

    const/4 v9, 0x1

    const v10, 0x7f060118

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 86
    sget-object v14, Lcom/oculus/notifications/NotificationsDisplayDuration;->SHORT:Lcom/oculus/notifications/NotificationsDisplayDuration;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v19}, Lcom/oculus/notifications/NotificationSender;->sendInternalNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLcom/oculus/notifications/NotificationsDisplayDuration;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method
