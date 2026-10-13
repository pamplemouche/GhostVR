.class public Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;
.super Ljava/lang/Object;
.source "FilenameMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/metadata/FilenameMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mFovX:F

.field private mPresentationFormat:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/localmedia/metadata/FilenameMetadata;
    .locals 6

    .prologue
    .line 77
    new-instance v0, Lcom/oculus/localmedia/metadata/FilenameMetadata;

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->mFormat:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->mPresentationFormat:Ljava/lang/String;

    iget v4, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->mFovX:F

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLcom/oculus/localmedia/metadata/FilenameMetadata$1;)V

    return-object v0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->mFormat:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setFovX(F)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->mFovX:F

    .line 74
    return-void
.end method

.method public setPresentationFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->mPresentationFormat:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->mTitle:Ljava/lang/String;

    .line 62
    return-void
.end method
