.class public Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;
.super Ljava/lang/Object;
.source "Section.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/Section$Assets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetEdge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;
    }
.end annotation


# instance fields
.field public node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
