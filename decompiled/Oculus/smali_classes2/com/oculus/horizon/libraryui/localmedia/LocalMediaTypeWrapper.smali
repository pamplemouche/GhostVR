.class public Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;
.super Ljava/lang/Object;
.source "LocalMediaTypeWrapper.java"


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private final mMediaTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/localmedia/MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/localmedia/MediaType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;->mMediaTypes:Lcom/google/common/collect/ImmutableList;

    .line 14
    iput-object p2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;->mDisplayName:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getMediaTypes()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/localmedia/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;->mMediaTypes:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method
