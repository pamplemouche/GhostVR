.class public final Lcom/oculus/android/exoplayer2/source/dash/manifest/FilteringDashManifestParser;
.super Ljava/lang/Object;
.source "FilteringDashManifestParser.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# instance fields
.field private final dashManifestParser:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;

.field private final filter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/RepresentationKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/RepresentationKey;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    iput-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/FilteringDashManifestParser;->dashManifestParser:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;

    .line 36
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/FilteringDashManifestParser;->filter:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/FilteringDashManifestParser;->dashManifestParser:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    iget-object p2, p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/FilteringDashManifestParser;->filter:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->copy(Ljava/util/List;)Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

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

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/manifest/FilteringDashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method
