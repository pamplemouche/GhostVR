.class public final Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistResetException;
.super Ljava/io/IOException;
.source "OculusHlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistResetException"
.end annotation


# instance fields
.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistResetException;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistResetException;-><init>(Ljava/lang/String;)V

    return-void
.end method
