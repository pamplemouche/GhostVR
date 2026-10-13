.class public Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;
.super Ljava/lang/Object;
.source "MobileConfigClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/mobileconfigclient/MobileConfigClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileConfigParamType"
.end annotation


# instance fields
.field public config:Ljava/lang/String;

.field public configId:D

.field public defaultValue:Ljava/lang/String;

.field public paramId:D

.field public parameter:Ljava/lang/String;

.field public slotId:D

.field public type:Ljava/lang/String;

.field public unit_type:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
