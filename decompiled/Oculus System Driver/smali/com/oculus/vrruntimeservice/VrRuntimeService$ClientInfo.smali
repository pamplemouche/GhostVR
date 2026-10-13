.class Lcom/oculus/vrruntimeservice/VrRuntimeService$ClientInfo;
.super Ljava/lang/Object;
.source "VrRuntimeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrruntimeservice/VrRuntimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientInfo"
.end annotation


# instance fields
.field public id:I

.field public uid:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$ClientInfo;->id:I

    iput p2, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$ClientInfo;->uid:I

    return-void
.end method
