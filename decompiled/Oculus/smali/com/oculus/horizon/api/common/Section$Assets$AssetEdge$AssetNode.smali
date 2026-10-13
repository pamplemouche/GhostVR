.class public Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;
.super Ljava/lang/Object;
.source "Section.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;,
        Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;,
        Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;
    }
.end annotation


# instance fields
.field public asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

.field public asset_media_type:Ljava/lang/String;

.field public display_text:Ljava/lang/String;

.field public display_text_uri:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
