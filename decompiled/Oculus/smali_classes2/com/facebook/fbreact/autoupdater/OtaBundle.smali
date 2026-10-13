.class public final Lcom/facebook/fbreact/autoupdater/OtaBundle;
.super Ljava/lang/Object;
.source "OtaBundle.java"

# interfaces
.implements Lcom/facebook/fbreact/autoupdater/ResourceBundle;


# instance fields
.field private final mBundleDir:Ljava/io/File;

.field private final mBundleVersion:I

.field private final mFallback:Lcom/facebook/fbreact/autoupdater/ResourceBundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/fbreact/autoupdater/Storage;I)V
    .locals 2

    .prologue
    .line 16
    invoke-virtual {p1, p2}, Lcom/facebook/fbreact/autoupdater/Storage;->getUpdatePersistFolder(I)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/facebook/fbreact/autoupdater/OtaBundle;-><init>(Ljava/io/File;ILcom/facebook/fbreact/autoupdater/ResourceBundle;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/fbreact/autoupdater/OtaBundle;-><init>(Ljava/io/File;ILcom/facebook/fbreact/autoupdater/ResourceBundle;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/facebook/fbreact/autoupdater/ResourceBundle;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/fbreact/autoupdater/OtaBundle;->mBundleDir:Ljava/io/File;

    .line 25
    iput p2, p0, Lcom/facebook/fbreact/autoupdater/OtaBundle;->mBundleVersion:I

    .line 26
    iput-object p3, p0, Lcom/facebook/fbreact/autoupdater/OtaBundle;->mFallback:Lcom/facebook/fbreact/autoupdater/ResourceBundle;

    .line 27
    return-void
.end method


# virtual methods
.method public ensureResource(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/facebook/fbreact/autoupdater/OtaBundle;->getResource(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureResources(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 41
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v0}, Lcom/facebook/fbreact/autoupdater/OtaBundle;->ensureResource(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getResource(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/OtaBundle;->mBundleDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/OtaBundle;->mFallback:Lcom/facebook/fbreact/autoupdater/ResourceBundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/OtaBundle;->mFallback:Lcom/facebook/fbreact/autoupdater/ResourceBundle;

    invoke-interface {v0, p1}, Lcom/facebook/fbreact/autoupdater/ResourceBundle;->ensureResource(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/OtaBundle;->mFallback:Lcom/facebook/fbreact/autoupdater/ResourceBundle;

    invoke-interface {v0, p1}, Lcom/facebook/fbreact/autoupdater/ResourceBundle;->getResource(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/facebook/fbreact/autoupdater/OtaBundle;->mBundleVersion:I

    return v0
.end method
