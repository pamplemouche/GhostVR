.class Lcom/oculus/panelapp/managedlauncher/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;
    }
.end annotation


# instance fields
.field final launcherActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/Config;->launcherActions:Ljava/util/List;

    return-void
.end method

.method private static createDebugConfig()Lcom/oculus/os/enterprise/Configuration;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const/4 v0, 0x2

    .line 78
    new-array v0, v0, [Lcom/oculus/os/enterprise/Mode;

    .line 79
    new-instance v1, Lcom/oculus/panelapp/managedlauncher/Config$1;

    invoke-direct {v1}, Lcom/oculus/panelapp/managedlauncher/Config$1;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 114
    new-instance v1, Lcom/oculus/panelapp/managedlauncher/Config$2;

    invoke-direct {v1}, Lcom/oculus/panelapp/managedlauncher/Config$2;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 155
    new-instance v1, Lcom/oculus/panelapp/managedlauncher/Config$3;

    invoke-direct {v1, v0}, Lcom/oculus/panelapp/managedlauncher/Config$3;-><init>([Lcom/oculus/os/enterprise/Mode;)V

    return-object v1
.end method

.method static read(Ljava/io/InputStream;)Lcom/oculus/panelapp/managedlauncher/Config;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 47
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ","

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 49
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 50
    new-instance v3, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-direct {v3, v4, v2, p0}, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/panelapp/managedlauncher/Config$1;)V

    .line 51
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 56
    new-instance p0, Lcom/oculus/panelapp/managedlauncher/Config;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/managedlauncher/Config;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 45
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p0, :cond_2

    .line 54
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :goto_2
    throw v0
.end method

.method static readEnterprise(Landroid/content/Context;)Lcom/oculus/panelapp/managedlauncher/Config;
    .locals 6

    .line 61
    invoke-static {p0}, Lcom/oculus/os/enterprise/EnterpriseServer;->isInEnterpriseMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0}, Lcom/oculus/os/enterprise/EnterpriseServer;->getConfiguration(Landroid/content/Context;)Lcom/oculus/os/enterprise/Configuration;

    move-result-object p0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/oculus/panelapp/managedlauncher/Config;->createDebugConfig()Lcom/oculus/os/enterprise/Configuration;

    move-result-object p0

    .line 67
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {p0}, Lcom/oculus/os/enterprise/Configuration;->getModes()[Lcom/oculus/os/enterprise/Mode;

    move-result-object v1

    invoke-interface {p0}, Lcom/oculus/os/enterprise/Configuration;->getDefaultModeIndex()I

    move-result p0

    aget-object p0, v1, p0

    .line 69
    invoke-interface {p0}, Lcom/oculus/os/enterprise/Mode;->getApplications()[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 70
    new-instance v4, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v3, v5}, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/panelapp/managedlauncher/Config$1;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    :cond_1
    new-instance p0, Lcom/oculus/panelapp/managedlauncher/Config;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/managedlauncher/Config;-><init>(Ljava/util/List;)V

    return-object p0
.end method
