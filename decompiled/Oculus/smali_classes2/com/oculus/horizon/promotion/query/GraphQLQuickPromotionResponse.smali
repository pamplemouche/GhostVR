.class public Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionResponse;
.super Ljava/lang/Object;
.source "GraphQLQuickPromotionResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionResponse$EligiblePromotions;
    }
.end annotation


# instance fields
.field public eligible_promotions:Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionResponse$EligiblePromotions;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
