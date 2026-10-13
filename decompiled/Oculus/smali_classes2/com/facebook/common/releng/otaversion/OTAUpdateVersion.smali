.class public Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;
.super Ljava/lang/Object;
.source "OTAUpdateVersion.java"


# static fields
.field private static otaUpdateVersion:Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mNativeVersionCode:I

.field private mOTAVersion:Ljava/lang/String;

.field private mVersionFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->otaUpdateVersion:Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->mVersionFile:Ljava/io/File;

    .line 57
    iput p2, p0, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->mNativeVersionCode:I

    .line 58
    iput-object p3, p0, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->mOTAVersion:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 31
    const-class v1, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->otaUpdateVersion:Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;

    if-nez v2, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 37
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 38
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :goto_0
    :try_start_2
    const-string v2, "overtheair"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 44
    new-instance v3, Ljava/io/File;

    const-string v4, "ota_version"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    invoke-static {v0, v3}, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->readOTAVersion(ILjava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 46
    new-instance v4, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;

    invoke-direct {v4, v3, v0, v2}, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;-><init>(Ljava/io/File;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->otaUpdateVersion:Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;

    .line 48
    :cond_0
    sget-object v0, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->otaUpdateVersion:Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 39
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static readOTAVersion(ILjava/io/File;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "0"

    .line 127
    :goto_0
    return-object v0

    .line 97
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const/4 v0, 0x0

    .line 103
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 105
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 110
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 115
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    :cond_1
    const-string v0, "-1"

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v0, "0"

    goto :goto_0

    .line 106
    :catch_1
    move-exception v1

    .line 110
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 111
    :catch_2
    move-exception v1

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 113
    :goto_2
    throw v0

    .line 118
    :cond_2
    const-string v1, "-"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 121
    array-length v1, v0

    if-eq v1, v4, :cond_3

    .line 122
    const-string v0, "-1"

    goto :goto_0

    .line 124
    :cond_3
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 127
    :cond_4
    const-string v0, "0"

    goto :goto_0

    .line 111
    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized storeOTAVersion(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->mVersionFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->mVersionFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 78
    :cond_1
    const-string v0, "0"

    iput-object v0, p0, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->mOTAVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->mOTAVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iput-object p1, p0, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->mOTAVersion:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->mVersionFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->mNativeVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
