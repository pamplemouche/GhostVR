.class public final Lcom/oculus/video/extractor/OculusExtractorsFactory;
.super Ljava/lang/Object;
.source "OculusExtractorsFactory.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;
    }
.end annotation


# static fields
.field private static final FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/oculus/android/exoplayer2/extractor/Extractor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extractorEventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "com.oculus.android.exoplayer2.ext.flac.FlacExtractor"

    .line 71
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oculus/android/exoplayer2/extractor/Extractor;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 76
    :goto_0
    sput-object v0, Lcom/oculus/video/extractor/OculusExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Lcom/oculus/android/exoplayer2/extractor/Extractor;
    .locals 6

    monitor-enter p0

    .line 90
    :try_start_0
    sget-object v0, Lcom/oculus/video/extractor/OculusExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/16 v1, 0xc

    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    new-array v0, v0, [Lcom/oculus/android/exoplayer2/extractor/Extractor;

    .line 91
    new-instance v2, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;

    invoke-direct {v2}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;-><init>()V

    iget-object v3, p0, Lcom/oculus/video/extractor/OculusExtractorsFactory;->extractorEventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    invoke-virtual {v2, v3}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;->setEventListener(Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;)Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 92
    new-instance v2, Lcom/oculus/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v2}, Lcom/oculus/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x2

    .line 93
    new-instance v5, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;

    invoke-direct {v5, v4}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;-><init>(Z)V

    iget-object v4, p0, Lcom/oculus/video/extractor/OculusExtractorsFactory;->extractorEventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    invoke-virtual {v5, v4}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->setEventListener(Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;)Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x3

    .line 94
    new-instance v4, Lcom/oculus/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-direct {v4}, Lcom/oculus/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x4

    .line 95
    new-instance v4, Lcom/oculus/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v4}, Lcom/oculus/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x5

    .line 96
    new-instance v4, Lcom/oculus/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v4}, Lcom/oculus/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x6

    .line 97
    new-instance v4, Lcom/oculus/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {v4}, Lcom/oculus/android/exoplayer2/extractor/ts/TsExtractor;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x7

    .line 98
    new-instance v4, Lcom/oculus/android/exoplayer2/extractor/flv/FlvExtractor;

    invoke-direct {v4}, Lcom/oculus/android/exoplayer2/extractor/flv/FlvExtractor;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x8

    .line 99
    new-instance v4, Lcom/oculus/android/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v4}, Lcom/oculus/android/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x9

    .line 100
    new-instance v4, Lcom/oculus/android/exoplayer2/extractor/ts/PsExtractor;

    invoke-direct {v4}, Lcom/oculus/android/exoplayer2/extractor/ts/PsExtractor;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0xa

    .line 101
    new-instance v4, Lcom/oculus/android/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {v4}, Lcom/oculus/android/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0xb

    .line 102
    new-instance v4, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;

    invoke-direct {v4}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;-><init>()V

    aput-object v4, v0, v2

    .line 103
    sget-object v2, Lcom/oculus/video/extractor/OculusExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 105
    :try_start_1
    sget-object v2, Lcom/oculus/video/extractor/OculusExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/extractor/Extractor;

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 108
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setExtractorEventListener(Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;)Lcom/oculus/video/extractor/OculusExtractorsFactory;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/oculus/video/extractor/OculusExtractorsFactory;->extractorEventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    return-object p0
.end method
