.class public final Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;
.super Ljava/lang/Object;
.source "GkBootstrap.java"


# static fields
.field static final DIR_NAME:Ljava/lang/String; = "GkBootstrap"

.field private static final FALSE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "GkBootstrap"

.field private static final TRUE:I = 0x1

.field private static final sKnownValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->sKnownValues:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndClearGk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, p1, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkAndClearGk(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static checkAndClearGk(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 81
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static {p0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->cleanUpGkFile(Landroid/content/Context;Ljava/lang/String;)V

    return p2

    :catchall_0
    move-exception p2

    invoke-static {p0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->cleanUpGkFile(Landroid/content/Context;Ljava/lang/String;)V

    throw p2
.end method

.method public static checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 90
    invoke-static {p0, p1, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 95
    invoke-static {p0, p1, p2}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getGkValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static cleanUpGkFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->isNewLocation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {p0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getLegacyFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 111
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :catch_0
    :goto_1
    const/4 p0, 0x1

    :goto_2
    if-eqz p0, :cond_3

    .line 117
    new-array p0, v1, [Ljava/lang/Object;

    aput-object p1, p0, v0

    const-string p1, "GkBootstrap"

    const-string v0, "Unable to clean up GK file %s"

    invoke-static {p1, v0, p0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static getDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 161
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "GkBootstrap"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 153
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getGkValueInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->sKnownValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 128
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->isNewLocation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 130
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/FileInputStream;

    .line 133
    invoke-static {p0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 135
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 136
    sget-object v4, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->sKnownValues:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 138
    invoke-static {p0, p1, v3}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKValueInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_3

    .line 144
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_3
    return v3

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v2

    .line 130
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz v2, :cond_4

    .line 141
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :goto_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_5

    .line 144
    :try_start_7
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3

    .line 147
    :catch_3
    :cond_5
    throw v1
.end method

.method public static getGkValueInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 59
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getGkValueInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method private static getLegacyFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isNewLocation(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 165
    invoke-static {p0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKValueInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static updateGKValueInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "GkBootstrap"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v3, :cond_1

    return-void

    .line 43
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 45
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 p0, 0x0

    .line 46
    :try_start_2
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 45
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz p0, :cond_2

    .line 47
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_6
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :goto_1
    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    .line 48
    :goto_2
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Unable to persist GK value to %s"

    invoke-static {v0, p0, p1, p2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void

    :catch_4
    move-exception p0

    .line 40
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string p2, "Unable to create %s directory"

    invoke-static {v0, p0, p2, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
