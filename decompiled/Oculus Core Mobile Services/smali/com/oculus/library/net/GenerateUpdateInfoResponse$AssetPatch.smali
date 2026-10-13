.class public Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetPatch;
.super Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;
.source "GenerateUpdateInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/net/GenerateUpdateInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetPatch"
.end annotation


# instance fields
.field public source_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$BinarySource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;-><init>()V

    return-void
.end method
