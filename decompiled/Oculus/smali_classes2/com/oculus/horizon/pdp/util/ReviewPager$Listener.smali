.class public interface abstract Lcom/oculus/horizon/pdp/util/ReviewPager$Listener;
.super Ljava/lang/Object;
.source "ReviewPager.java"

# interfaces
.implements Lcom/oculus/horizon/util/Pager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/util/ReviewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/horizon/util/Pager$Listener",
        "<",
        "Lcom/oculus/horizon/api/common/Item$QualityRating;",
        "Ljava/lang/String;",
        "Lcom/oculus/http/core/base/ApiError;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onItem(Lcom/oculus/horizon/api/common/Item;)V
.end method
