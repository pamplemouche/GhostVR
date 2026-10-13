.class public Lcom/oculus/antipiracy/OculusDeveloperQueryResponse;
.super Ljava/lang/Object;
.source "OculusDeveloperQueryResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/antipiracy/OculusDeveloperQueryResponse$OculusDeveloperStatus;
    }
.end annotation


# instance fields
.field public mOculusDeveloperStatus:Lcom/oculus/antipiracy/OculusDeveloperQueryResponse$OculusDeveloperStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewer"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
