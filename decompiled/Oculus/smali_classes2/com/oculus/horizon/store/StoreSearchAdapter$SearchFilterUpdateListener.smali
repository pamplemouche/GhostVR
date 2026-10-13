.class public interface abstract Lcom/oculus/horizon/store/StoreSearchAdapter$SearchFilterUpdateListener;
.super Ljava/lang/Object;
.source "StoreSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/StoreSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchFilterUpdateListener"
.end annotation


# virtual methods
.method public abstract onFiltersUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;",
            ">;)V"
        }
    .end annotation
.end method
