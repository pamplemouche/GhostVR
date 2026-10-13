.class public final Lcom/oculus/android/exoplayer2/ext/opus/OpusLibrary;
.super Ljava/lang/Object;
.source "OpusLibrary.java"


# static fields
.field private static final LOADER:Lcom/oculus/android/exoplayer2/util/LibraryLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "goog.exo.opus"

    .line 27
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/oculus/android/exoplayer2/util/LibraryLoader;

    const-string v1, "opusLib"

    const-string v2, "opusJNI"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/util/LibraryLoader;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusLibrary;->LOADER:Lcom/oculus/android/exoplayer2/util/LibraryLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 56
    invoke-static {}, Lcom/oculus/android/exoplayer2/ext/opus/OpusLibrary;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oculus/android/exoplayer2/ext/opus/OpusLibrary;->opusGetVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 49
    sget-object v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusLibrary;->LOADER:Lcom/oculus/android/exoplayer2/util/LibraryLoader;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/LibraryLoader;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static native opusGetVersion()Ljava/lang/String;
.end method

.method public static native opusIsSecureDecodeSupported()Z
.end method

.method public static varargs setLibraries([Ljava/lang/String;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/oculus/android/exoplayer2/ext/opus/OpusLibrary;->LOADER:Lcom/oculus/android/exoplayer2/util/LibraryLoader;

    invoke-virtual {v0, p0}, Lcom/oculus/android/exoplayer2/util/LibraryLoader;->setLibraries([Ljava/lang/String;)V

    return-void
.end method
