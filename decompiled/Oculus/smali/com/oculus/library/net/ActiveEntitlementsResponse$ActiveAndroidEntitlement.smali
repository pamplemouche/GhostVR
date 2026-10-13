.class public Lcom/oculus/library/net/ActiveEntitlementsResponse$ActiveAndroidEntitlement;
.super Ljava/lang/Object;
.source "ActiveEntitlementsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/net/ActiveEntitlementsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveAndroidEntitlement"
.end annotation


# instance fields
.field public grantExpiration:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration_time"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public grantReason:Lcom/oculus/library/model/GrantReason;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "grant_reason"
    .end annotation
.end field

.field public grantTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "grant_time"
    .end annotation
.end field

.field public item:Lcom/oculus/horizon/api/common/Item;

.field public last_used:J

.field public signed_token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
