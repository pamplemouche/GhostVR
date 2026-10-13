.class Lcom/oculus/horizon/service/OVRService$PermissionDeniedForJson;
.super Lcom/oculus/horizon/service/OVRService$BaseForJson;
.source "OVRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/OVRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionDeniedForJson"
.end annotation


# instance fields
.field public final permission:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "permission_name"
    .end annotation
.end field

.field public final pkgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 1392
    const-string v0, "permission_denied"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p4, v1}, Lcom/oculus/horizon/service/OVRService$BaseForJson;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Lcom/oculus/horizon/service/OVRService$1;)V

    .line 1393
    iput-object p2, p0, Lcom/oculus/horizon/service/OVRService$PermissionDeniedForJson;->pkgName:Ljava/lang/String;

    .line 1394
    iput-object p3, p0, Lcom/oculus/horizon/service/OVRService$PermissionDeniedForJson;->permission:Ljava/lang/String;

    .line 1395
    return-void
.end method
