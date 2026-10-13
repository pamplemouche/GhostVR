.class public Lcom/oculus/vrapi/SystemActivitiesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemActivitiesReceiver.java"


# static fields
.field private static Receiver:Lcom/oculus/vrapi/SystemActivitiesReceiver; = null

.field private static RegisteredReceiver:Z = false

.field private static SYSTEM_ACTIVITY_COMMAND_EXIT_TO_HOME:Ljava/lang/String; = "exitToHome"

.field private static SYSTEM_ACTIVITY_COMMAND_REORIENT:Ljava/lang/String; = "reorient"

.field private static SYSTEM_ACTIVITY_INTENT:Ljava/lang/String; = "com.oculus.system_activity"

.field private static final TAG:Ljava/lang/String; = "SystemActivitiesReceiver"

.field private static contextObject:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/oculus/vrapi/SystemActivitiesReceiver;

    invoke-direct {v0}, Lcom/oculus/vrapi/SystemActivitiesReceiver;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/SystemActivitiesReceiver;->Receiver:Lcom/oculus/vrapi/SystemActivitiesReceiver;

    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/oculus/vrapi/SystemActivitiesReceiver;->RegisteredReceiver:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isTrustedApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 68
    new-array v1, v0, [Ljava/lang/String;

    .line 72
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {}, Lcom/oculus/vrapi/SystemActivitiesReceiver;->isUserDevBuild()Z

    move-result p1

    return p1

    .line 77
    :cond_0
    sget-object v1, Lcom/oculus/vrapi/TrustedSignatureVerifier;->TrustedSignedApps:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-static {p1, p2}, Lcom/oculus/vrapi/TrustedSignatureVerifier;->isSignatureValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method private static isUserDevBuild()Z
    .locals 2

    const-string v0, "SystemActivitiesReceiver"

    const-string v1, "Checking build type"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ro.build.fingerprint"

    const/4 v1, 0x0

    .line 97
    invoke-static {v0, v1}, Lcom/oculus/vrapi/SystemProps;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "release-keys"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static native nativeSystemActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static startReceiver(Landroid/content/Context;)V
    .locals 2

    .line 38
    sget-boolean v0, Lcom/oculus/vrapi/SystemActivitiesReceiver;->RegisteredReceiver:Z

    if-nez v0, :cond_0

    const-string v0, "SystemActivitiesReceiver"

    const-string v1, "Registering Oculus System Activity receiver"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    sget-object v1, Lcom/oculus/vrapi/SystemActivitiesReceiver;->SYSTEM_ACTIVITY_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/oculus/vrapi/SystemActivitiesReceiver;->Receiver:Lcom/oculus/vrapi/SystemActivitiesReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 46
    sput-boolean v0, Lcom/oculus/vrapi/SystemActivitiesReceiver;->RegisteredReceiver:Z

    .line 47
    sput-object p0, Lcom/oculus/vrapi/SystemActivitiesReceiver;->contextObject:Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/oculus/vrapi/TrustedSignatureVerifier;->GenerateSignatureMap()V

    goto :goto_0

    :cond_0
    const-string p0, "SystemActivitiesReceiver"

    const-string v0, "Already registered Oculus System Activty receiver!"

    .line 52
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static stopReceiver(Landroid/content/Context;)V
    .locals 2

    .line 57
    sget-boolean v0, Lcom/oculus/vrapi/SystemActivitiesReceiver;->RegisteredReceiver:Z

    if-eqz v0, :cond_0

    const-string v0, "SystemActivitiesReceiver"

    const-string v1, "Unregistering Oculus System Activity receiver"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/oculus/vrapi/SystemActivitiesReceiver;->Receiver:Lcom/oculus/vrapi/SystemActivitiesReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 61
    sput-boolean p0, Lcom/oculus/vrapi/SystemActivitiesReceiver;->RegisteredReceiver:Z

    const/4 p0, 0x0

    .line 62
    sput-object p0, Lcom/oculus/vrapi/SystemActivitiesReceiver;->contextObject:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "SystemActivitiesReceiver"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemActivityReceiver.onReceive intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrapi/SystemActivitiesReceiver;->SYSTEM_ACTIVITY_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    invoke-static {p2}, Lcom/oculus/vrapi/SystemUtilities;->getPackageStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {p2}, Lcom/oculus/vrapi/SystemUtilities;->getCommandStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {p2}, Lcom/oculus/vrapi/SystemUtilities;->getUriStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v1}, Lcom/oculus/vrapi/SystemUtilities;->getPlatformUIVersion(Ljava/lang/String;)I

    move-result v3

    const-string v4, "SystemActivitiesReceiver"

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fromPackageName: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SystemActivitiesReceiver"

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SystemActivitiesReceiver"

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v4, Lcom/oculus/vrapi/SystemActivitiesReceiver;->SYSTEM_ACTIVITY_COMMAND_EXIT_TO_HOME:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/oculus/vrapi/SystemActivitiesReceiver;->SYSTEM_ACTIVITY_COMMAND_REORIENT:Ljava/lang/String;

    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    const-string v3, "_ci_"

    .line 130
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "_ci_"

    .line 132
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    if-nez p2, :cond_1

    const-string p1, "SystemActivitiesReceiver"

    const-string p2, "PendingIntent is null"

    .line 137
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_1
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p2

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrapi/SystemActivitiesReceiver;->isTrustedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p1, "SystemActivitiesReceiver"

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent sent from untrustworthy app - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p2, "SystemActivitiesReceiver"

    const-string v3, "App is trusted"

    .line 152
    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "SystemActivitiesReceiver"

    const-string p2, "No PendingIntent attached"

    .line 157
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_4
    :goto_0
    invoke-static {p1, v0, v1, v2}, Lcom/oculus/vrapi/SystemActivitiesReceiver;->nativeSystemActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/oculus/vrapi/SystemActivitiesReceiver;->contextObject:Landroid/content/Context;

    if-eqz p1, :cond_5

    .line 165
    sget-object p1, Lcom/oculus/vrapi/SystemActivitiesReceiver;->contextObject:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oculus/vrapi/ContextHelper;->finishActivityWithoutTransitionAnimation(Landroid/content/Context;Z)V

    :cond_5
    return-void
.end method
