.class Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/managedlauncher/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LauncherAction"
.end annotation


# instance fields
.field final appName:Ljava/lang/String;

.field final launchCommand:Ljava/lang/String;

.field final packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;->appName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;->launchCommand:Ljava/lang/String;

    const-string p2, "/"

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;->packageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/panelapp/managedlauncher/Config$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
