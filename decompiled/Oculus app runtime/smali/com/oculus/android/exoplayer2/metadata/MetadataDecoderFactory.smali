.class public interface abstract Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"


# static fields
.field public static final DEFAULT:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory$1;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory$1;-><init>()V

    sput-object v0, Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract createDecoder(Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/android/exoplayer2/metadata/MetadataDecoder;
.end method

.method public abstract supportsFormat(Lcom/oculus/android/exoplayer2/Format;)Z
.end method
