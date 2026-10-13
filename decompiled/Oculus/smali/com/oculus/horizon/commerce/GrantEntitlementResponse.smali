.class public abstract Lcom/oculus/horizon/commerce/GrantEntitlementResponse;
.super Ljava/lang/Object;
.source "GrantEntitlementResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAppEntitlements()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/Entitlement;",
            ">;"
        }
    .end annotation
.end method
