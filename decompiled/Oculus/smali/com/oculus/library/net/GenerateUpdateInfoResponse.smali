.class public Lcom/oculus/library/net/GenerateUpdateInfoResponse;
.super Ljava/lang/Object;
.source "GenerateUpdateInfoResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;,
        Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetPatch;,
        Lcom/oculus/library/net/GenerateUpdateInfoResponse$BinarySource;,
        Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;,
        Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;,
        Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;,
        Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileEdge;,
        Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFiles;,
        Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;,
        Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;
    }
.end annotation


# instance fields
.field public app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
