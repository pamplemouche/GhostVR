.class public final Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/FilteringSsManifestParser;
.super Ljava/lang/Object;
.source "FilteringSsManifestParser.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
        ">;"
    }
.end annotation


# instance fields
.field private final filter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
            ">;"
        }
    .end annotation
.end field

.field private final ssManifestParser:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    iput-object v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/FilteringSsManifestParser;->ssManifestParser:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    .line 35
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/FilteringSsManifestParser;->filter:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/FilteringSsManifestParser;->ssManifestParser:Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    move-result-object p1

    iget-object p2, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/FilteringSsManifestParser;->filter:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->copy(Ljava/util/List;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/FilteringSsManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    move-result-object p1

    return-object p1
.end method
