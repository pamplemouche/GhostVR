.class public final Lcom/oculus/vrshell/NuxController;
.super Ljava/lang/Object;
.source "NuxController.java"


# static fields
.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final EXTRA_STEP:Ljava/lang/String; = "step"

.field private static final KEY_COMPLETE:Ljava/lang/String; = "complete"

.field private static final NUX_MONTEREY_PACKAGE:Ljava/lang/String; = "com.oculus.MontereySetup"

.field private static final NUX_PROGRESS_ACTION:Ljava/lang/String; = "com.oculus.vrshell.intent.action.NUX_PROGRESS"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/oculus/vrshell/NuxController;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/NuxController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleNotification(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    .line 25
    invoke-static {p1}, Lcom/oculus/vrshell/NuxController;->isNuxProgressAction(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-string v0, "packageName"

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oculus.MontereySetup"

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-string v0, "step"

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "complete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    sget-object p1, Lcom/oculus/vrshell/NuxController;->TAG:Ljava/lang/String;

    const-string v0, "Marking Quest NUX complete."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "has_finished_monterey_nux"

    const-string v0, "1"

    .line 42
    invoke-static {p0, p1, v0}, Lcom/oculus/vrshell/util/HorizonUtil;->setProfilePref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private static isNuxProgressAction(Landroid/content/Intent;)Z
    .locals 1

    .line 21
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oculus.vrshell.intent.action.NUX_PROGRESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
