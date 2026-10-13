.class public Lcom/oculus/horizon/api/store/SectionItemsResponse;
.super Ljava/lang/Object;
.source "SectionItemsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/store/SectionItemsResponse$Items;
    }
.end annotation


# instance fields
.field public all_items:Lcom/oculus/horizon/api/store/SectionItemsResponse$Items;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageInfo()Lcom/oculus/horizon/api/common/PageInfo;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/api/store/SectionItemsResponse;->all_items:Lcom/oculus/horizon/api/store/SectionItemsResponse$Items;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SectionItemsResponse$Items;->page_info:Lcom/oculus/horizon/api/common/PageInfo;

    return-object v0
.end method
