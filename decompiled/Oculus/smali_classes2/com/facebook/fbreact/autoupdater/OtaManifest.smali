.class public final Lcom/facebook/fbreact/autoupdater/OtaManifest;
.super Ljava/lang/Object;
.source "OtaManifest.java"


# static fields
.field public static KEY_PACKAGE:Ljava/lang/String;

.field public static KEY_VERSION:Ljava/lang/String;

.field public static KEY_VERSION_NAME:Ljava/lang/String;


# instance fields
.field private mManifest:Ljava/io/File;

.field private mPackage:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mVersion:I

.field private mVersionName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "version_code"

    sput-object v0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->KEY_VERSION:Ljava/lang/String;

    .line 15
    const-string v0, "version_name"

    sput-object v0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->KEY_VERSION_NAME:Ljava/lang/String;

    .line 16
    const-string v0, "package"

    sput-object v0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->KEY_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mVersion:I

    .line 25
    iput-object v1, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mVersionName:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mPackage:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mManifest:Ljava/io/File;

    .line 28
    return-void
.end method

.method private parseJSON(Landroid/util/JsonReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/facebook/fbreact/autoupdater/OtaManifest;->KEY_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mVersion:I

    goto :goto_0

    .line 52
    :cond_0
    sget-object v1, Lcom/facebook/fbreact/autoupdater/OtaManifest;->KEY_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mVersionName:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_1
    sget-object v1, Lcom/facebook/fbreact/autoupdater/OtaManifest;->KEY_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mPackage:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 61
    return-void
.end method


# virtual methods
.method public getBundleDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mManifest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mVersion:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mVersion:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mManifest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mManifest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The provided manifest is not a valid file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/OtaManifest;->mManifest:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    new-instance v3, Landroid/util/JsonReader;

    invoke-direct {v3, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    invoke-direct {p0, v3}, Lcom/facebook/fbreact/autoupdater/OtaManifest;->parseJSON(Landroid/util/JsonReader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 41
    invoke-static {v3}, Lcom/facebook/common/releng/io/FileIOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 42
    invoke-static {v1}, Lcom/facebook/common/releng/io/FileIOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 44
    return-void

    .line 41
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v2}, Lcom/facebook/common/releng/io/FileIOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 42
    invoke-static {v1}, Lcom/facebook/common/releng/io/FileIOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 41
    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method
