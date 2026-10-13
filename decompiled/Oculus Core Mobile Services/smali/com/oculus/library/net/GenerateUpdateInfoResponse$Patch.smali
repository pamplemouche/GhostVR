.class public Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;
.super Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;
.source "GenerateUpdateInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/net/GenerateUpdateInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Patch"
.end annotation


# instance fields
.field public asset_file_patches:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetPatch;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public obb_patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;-><init>()V

    return-void
.end method
