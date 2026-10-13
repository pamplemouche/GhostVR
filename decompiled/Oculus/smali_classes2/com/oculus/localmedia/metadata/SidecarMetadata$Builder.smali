.class public Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;
.super Ljava/lang/Object;
.source "SidecarMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/metadata/SidecarMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/localmedia/metadata/SidecarMetadata;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/oculus/localmedia/metadata/SidecarMetadata;

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->mFormat:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/localmedia/metadata/SidecarMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/localmedia/metadata/SidecarMetadata$1;)V

    return-object v0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->mFormat:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->mTitle:Ljava/lang/String;

    .line 46
    return-void
.end method
