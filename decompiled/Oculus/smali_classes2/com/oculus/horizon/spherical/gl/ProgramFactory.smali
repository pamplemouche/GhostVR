.class public Lcom/oculus/horizon/spherical/gl/ProgramFactory;
.super Ljava/lang/Object;
.source "ProgramFactory.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oculus/horizon/spherical/gl/ProgramFactory;->mResources:Landroid/content/res/Resources;

    .line 25
    return-void
.end method

.method private getShaderSource(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/ProgramFactory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 64
    :try_start_0
    invoke-static {v1}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 68
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Reader;)V

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :try_start_1
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Reader;)V

    throw v0
.end method


# virtual methods
.method public create(II)Lcom/oculus/horizon/spherical/gl/Program;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/oculus/horizon/spherical/gl/Program;

    .line 39
    invoke-direct {p0, p1}, Lcom/oculus/horizon/spherical/gl/ProgramFactory;->getShaderSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/oculus/horizon/spherical/gl/ProgramFactory;->getShaderSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/spherical/gl/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
