.class public Lcom/oculus/horizon/remotewipe/DeviceManifestWipeStatusRequest;
.super Ljava/lang/Object;
.source "DeviceManifestWipeStatusRequest.java"


# instance fields
.field private final mSerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oculus/horizon/remotewipe/DeviceManifestWipeStatusRequest;->mSerialNumber:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getParams()Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    const-string v0, "serial_number"

    iget-object v1, p0, Lcom/oculus/horizon/remotewipe/DeviceManifestWipeStatusRequest;->mSerialNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
