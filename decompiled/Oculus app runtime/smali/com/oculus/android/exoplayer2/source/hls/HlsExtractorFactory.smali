.class public interface abstract Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;
.super Ljava/lang/Object;
.source "HlsExtractorFactory.java"


# static fields
.field public static final DEFAULT:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/oculus/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;-><init>()V

    sput-object v0, Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;->DEFAULT:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    return-void
.end method


# virtual methods
.method public abstract createExtractor(Lcom/oculus/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/Format;Ljava/util/List;Lcom/oculus/android/exoplayer2/drm/DrmInitData;Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/extractor/Extractor;",
            "Landroid/net/Uri;",
            "Lcom/oculus/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/Format;",
            ">;",
            "Lcom/oculus/android/exoplayer2/drm/DrmInitData;",
            "Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/oculus/android/exoplayer2/extractor/Extractor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
