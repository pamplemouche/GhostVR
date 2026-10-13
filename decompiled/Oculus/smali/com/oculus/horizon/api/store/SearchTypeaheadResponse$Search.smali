.class public Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;
.super Ljava/lang/Object;
.source "SearchTypeaheadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Search"
.end annotation


# instance fields
.field public typeahead_completions:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$TypeaheadCompletions;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
